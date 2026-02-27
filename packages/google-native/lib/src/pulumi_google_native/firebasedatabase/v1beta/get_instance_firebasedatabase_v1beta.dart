import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_firebasedatabase_v1beta_args.dart';
import 'get_instance_firebasedatabase_v1beta_result.dart';

/// Gets the DatabaseInstance identified by the specified resource name.
Future<GetInstanceFirebasedatabaseV1betaResult>
    getInstanceFirebasedatabaseV1beta(
  GetInstanceFirebasedatabaseV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasedatabase/v1beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFirebasedatabaseV1betaResult.fromMap(result);
}
