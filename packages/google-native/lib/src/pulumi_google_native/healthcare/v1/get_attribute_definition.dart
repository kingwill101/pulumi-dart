import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attribute_definition_args.dart';
import 'get_attribute_definition_result.dart';

/// Gets the specified Attribute definition.
Future<GetAttributeDefinitionResult> getAttributeDefinition(
  GetAttributeDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getAttributeDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionResult.fromMap(result);
}
