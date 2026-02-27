import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_servicedirectory_v1beta1_args.dart';
import 'get_namespace_servicedirectory_v1beta1_result.dart';

/// Gets a namespace.
Future<GetNamespaceServicedirectoryV1beta1Result>
    getNamespaceServicedirectoryV1beta1(
  GetNamespaceServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServicedirectoryV1beta1Result.fromMap(result);
}
