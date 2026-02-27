import 'package:pulumi/pulumi.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';

/// Data source for managing an AWS Redshift Serverless Namespace.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getNamespace:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}
