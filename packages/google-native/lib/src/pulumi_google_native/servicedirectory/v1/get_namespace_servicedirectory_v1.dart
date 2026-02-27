import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_servicedirectory_v1_args.dart';
import 'get_namespace_servicedirectory_v1_result.dart';

/// Gets a namespace.
Future<GetNamespaceServicedirectoryV1Result> getNamespaceServicedirectoryV1(
  GetNamespaceServicedirectoryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServicedirectoryV1Result.fromMap(result);
}
