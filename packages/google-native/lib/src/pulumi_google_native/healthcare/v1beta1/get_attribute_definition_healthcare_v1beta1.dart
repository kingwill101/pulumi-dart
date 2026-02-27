import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attribute_definition_healthcare_v1beta1_args.dart';
import 'get_attribute_definition_healthcare_v1beta1_result.dart';

/// Gets the specified Attribute definition.
Future<GetAttributeDefinitionHealthcareV1beta1Result>
    getAttributeDefinitionHealthcareV1beta1(
  GetAttributeDefinitionHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAttributeDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeDefinitionHealthcareV1beta1Result.fromMap(result);
}
