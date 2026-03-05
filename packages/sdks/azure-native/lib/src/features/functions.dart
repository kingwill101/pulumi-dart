import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_feature_registration_args.dart';
import 'get_subscription_feature_registration_result.dart';

/// Returns a feature registration
///
/// Uses Azure REST API version 2021-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_features_get_subscription_feature_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionFeatureRegistrationResult>
getSubscriptionFeatureRegistration(
  GetSubscriptionFeatureRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:features:getSubscriptionFeatureRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionFeatureRegistrationResult.fromMap(result);
}
