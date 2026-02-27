import 'package:pulumi/pulumi.dart';
import 'get_distribution_configuration_args.dart';
import 'get_distribution_configuration_result.dart';

/// Provides details about an Image Builder Distribution Configuration.
Future<GetDistributionConfigurationResult> getDistributionConfiguration(
  GetDistributionConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfiguration:getDistributionConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationResult.fromMap(result);
}
