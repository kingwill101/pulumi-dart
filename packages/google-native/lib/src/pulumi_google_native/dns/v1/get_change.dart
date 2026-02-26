import 'package:pulumi/pulumi.dart';
import 'get_change_args.dart';
import 'get_change_result.dart';

/// Fetches the representation of an existing Change.
Future<GetChangeResult> getChange(
  GetChangeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getChange',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChangeResult.fromMap(result);
}
