import 'package:pulumi/pulumi.dart';
import 'get_repository_creation_template_args.dart';
import 'get_repository_creation_template_result.dart';

/// The ECR Repository Creation Template data source allows the template details to be retrieved for a Repository Creation Template.
Future<GetRepositoryCreationTemplateResult> getRepositoryCreationTemplate(
  GetRepositoryCreationTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositoryCreationTemplate:getRepositoryCreationTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryCreationTemplateResult.fromMap(result);
}
