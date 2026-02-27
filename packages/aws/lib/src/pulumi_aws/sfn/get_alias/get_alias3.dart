import 'package:pulumi/pulumi.dart';
import 'get_alias_args3.dart';
import 'get_alias_result3.dart';

/// Data source for managing an AWS SFN (Step Functions) State Machine Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAliasResult3> getAlias3(
  GetAliasArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getAlias:getAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAliasResult3.fromMap(result);
}
