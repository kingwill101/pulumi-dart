import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_sfn_args.dart';
import 'get_alias_sfn_result.dart';

/// Data source for managing an AWS SFN (Step Functions) State Machine Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAliasSfnResult> getAliasSfn(
  GetAliasSfnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasSfnResult.fromMap(result);
}
