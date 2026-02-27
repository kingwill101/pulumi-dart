import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';

/// Use this data source to get the ARN of a KMS key alias.
/// By using this data source, you can reference key alias
/// without having to hard code the ARN as input.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kms/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}
