import 'package:pulumi/pulumi.dart';
import 'get_saml_provider_args.dart';
import 'get_saml_provider_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM SAML provider. This will allow you to easily retrieve the metadata
/// document of an existing SAML provider.
Future<GetSamlProviderResult> getSamlProvider(
  GetSamlProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getSamlProvider:getSamlProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSamlProviderResult.fromMap(result);
}
