import 'package:pulumi/pulumi.dart';
import 'get_tag_template_args.dart';
import 'get_tag_template_result.dart';

/// Gets a tag template.
Future<GetTagTemplateResult> getTagTemplate(
  GetTagTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTagTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateResult.fromMap(result);
}
