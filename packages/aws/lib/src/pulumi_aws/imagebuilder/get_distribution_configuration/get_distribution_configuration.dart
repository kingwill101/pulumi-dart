import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_args.dart';
import 'get_distribution_configuration_result.dart';

/// Provides details about an Image Builder Distribution Configuration.
Future<GetDistributionConfigurationResult> getDistributionConfiguration(
  GetDistributionConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfiguration:getDistributionConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationResult.fromMap(result);
}
