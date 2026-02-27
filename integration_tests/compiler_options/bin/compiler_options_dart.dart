import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  final values = [1, 2, 3];
  if (!values.contains(1)) {
    throw StateError('compiler options check failed');
  }

  await Deployment.runOrThrow(() {
    if (values.where((value) => value.isEven).toList().length != 1) {
      throw StateError('compiler options check failed');
    }
  });
}
