import 'package:pulumi/pulumi.dart';
import 'get_attribute_args.dart';
import 'get_attribute_result.dart';

/// Retrieves a Data Attribute resource.
Future<GetAttributeResult> getAttribute(
  GetAttributeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getAttribute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttributeResult.fromMap(result);
}
