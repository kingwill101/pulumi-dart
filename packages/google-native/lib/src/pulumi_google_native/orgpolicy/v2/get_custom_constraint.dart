import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_constraint_args.dart';
import 'get_custom_constraint_result.dart';

/// Gets a custom constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the custom constraint does not exist.
Future<GetCustomConstraintResult> getCustomConstraint(
  GetCustomConstraintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:orgpolicy/v2:getCustomConstraint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomConstraintResult.fromMap(result);
}
