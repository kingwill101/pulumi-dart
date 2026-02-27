import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tag_template_args2.dart';
import 'get_tag_template_result2.dart';

/// Gets a tag template.
Future<GetTagTemplateResult2> getTagTemplate2(
  GetTagTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateResult2.fromMap(result);
}
