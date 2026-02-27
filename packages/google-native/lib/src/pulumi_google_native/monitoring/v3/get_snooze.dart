import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snooze_args.dart';
import 'get_snooze_result.dart';

/// Retrieves a Snooze by name.
Future<GetSnoozeResult> getSnooze(
  GetSnoozeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getSnooze',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnoozeResult.fromMap(result);
}
