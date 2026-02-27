import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snooze_args.dart';
import 'get_snooze_result.dart';

/// Retrieves a Snooze by name.
Future<GetSnoozeResult> getSnooze(
  GetSnoozeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getSnooze',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnoozeResult.fromMap(result);
}
