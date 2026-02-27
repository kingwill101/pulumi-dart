import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_template_datacatalog_v1beta1_args.dart';
import 'get_tag_template_datacatalog_v1beta1_result.dart';

/// Gets a tag template.
Future<GetTagTemplateDatacatalogV1beta1Result> getTagTemplateDatacatalogV1beta1(
  GetTagTemplateDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTagTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateDatacatalogV1beta1Result.fromMap(result);
}
