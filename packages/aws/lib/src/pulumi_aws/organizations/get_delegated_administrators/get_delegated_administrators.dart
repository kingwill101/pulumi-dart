import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_administrators_args.dart';
import 'get_delegated_administrators_result.dart';

/// Get a list of AWS accounts that are designated as delegated administrators in this organization
Future<GetDelegatedAdministratorsResult> getDelegatedAdministrators(
  GetDelegatedAdministratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getDelegatedAdministrators:getDelegatedAdministrators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedAdministratorsResult.fromMap(result);
}
