import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_gkehub_v1beta_args.dart';
import 'get_feature_gkehub_v1beta_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureGkehubV1betaResult> getFeatureGkehubV1beta(
  GetFeatureGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGkehubV1betaResult.fromMap(result);
}
