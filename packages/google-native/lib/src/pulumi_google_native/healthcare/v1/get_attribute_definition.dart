import 'package:pulumi/pulumi.dart';
import 'get_attribute_definition_args.dart';
import 'get_attribute_definition_result.dart';

/// Gets the specified Attribute definition.
Future<GetAttributeDefinitionResult> getAttributeDefinition(
  GetAttributeDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getAttributeDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionResult.fromMap(result);
}
