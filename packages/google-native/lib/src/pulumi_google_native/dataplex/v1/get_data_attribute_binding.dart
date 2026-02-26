import 'package:pulumi/pulumi.dart';
import 'get_data_attribute_binding_args.dart';
import 'get_data_attribute_binding_result.dart';

/// Retrieves a DataAttributeBinding resource.
Future<GetDataAttributeBindingResult> getDataAttributeBinding(
  GetDataAttributeBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataAttributeBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataAttributeBindingResult.fromMap(result);
}
