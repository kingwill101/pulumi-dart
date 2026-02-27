import 'package:pulumi/pulumi.dart';

Output<String> outsideCapture(Config config) {
  return Output.create(0).apply((_) {
    if (config.require('value') != 'it works') {
      throw StateError('outside capture failed');
    }
    return 'outside capture works';
  });
}

Output<String> insideCapture() {
  return Output.create(0).apply((_) {
    final config = Config('config_capture_e2e');
    if (config.require('value') != 'it works') {
      throw StateError('inside capture failed');
    }
    return 'inside capture works';
  });
}

class ConfigCaptureStack extends Stack {
  ConfigCaptureStack() {
    final config = Config('config_capture_e2e');
    registerOutputs({
      'outside': outsideCapture(config),
      'inside': insideCapture(),
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ConfigCaptureStack());
}
