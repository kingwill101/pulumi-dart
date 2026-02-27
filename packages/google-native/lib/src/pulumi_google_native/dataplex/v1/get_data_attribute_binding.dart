import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_attribute_binding_args.dart';
import 'get_data_attribute_binding_result.dart';

/// Retrieves a DataAttributeBinding resource.
Future<GetDataAttributeBindingResult> getDataAttributeBinding(
  GetDataAttributeBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataAttributeBindingResult.fromMap(result);
}
