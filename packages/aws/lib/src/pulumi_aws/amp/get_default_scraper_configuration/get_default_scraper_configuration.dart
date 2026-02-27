import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_scraper_configuration_args.dart';
import 'get_default_scraper_configuration_result.dart';

/// Returns the default scraper configuration used when Amazon EKS creates a scraper for you.
Future<GetDefaultScraperConfigurationResult> getDefaultScraperConfiguration(
  GetDefaultScraperConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getDefaultScraperConfiguration:getDefaultScraperConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultScraperConfigurationResult.fromMap(result);
}
