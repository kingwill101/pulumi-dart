import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_args.dart';
import 'get_change_result.dart';

/// Fetches the representation of an existing Change.
Future<GetChangeResult> getChange(
  GetChangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getChange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeResult.fromMap(result);
}
