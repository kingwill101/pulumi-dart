import 'package:pulumi/pulumi.dart' hide Config;
import 'get_alias_args.dart';
import 'get_alias_result.dart';

/// Gets an alias.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}
