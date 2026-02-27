import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attribute_args.dart';
import 'get_attribute_result.dart';

/// Retrieves a Data Attribute resource.
Future<GetAttributeResult> getAttribute(
  GetAttributeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAttribute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttributeResult.fromMap(result);
}
