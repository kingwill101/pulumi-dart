import 'package:pulumi/pulumi.dart' hide Config;
import 'get_attribute_definition_args2.dart';
import 'get_attribute_definition_result2.dart';

/// Gets the specified Attribute definition.
Future<GetAttributeDefinitionResult2> getAttributeDefinition2(
  GetAttributeDefinitionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAttributeDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionResult2.fromMap(result);
}
