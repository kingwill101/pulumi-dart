import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_template_args.dart';
import 'get_tag_template_result.dart';

/// Gets a tag template.
Future<GetTagTemplateResult> getTagTemplate(
  GetTagTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateResult.fromMap(result);
}
