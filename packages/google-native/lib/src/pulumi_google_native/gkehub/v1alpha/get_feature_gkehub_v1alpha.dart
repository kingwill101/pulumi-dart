import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_gkehub_v1alpha_args.dart';
import 'get_feature_gkehub_v1alpha_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureGkehubV1alphaResult> getFeatureGkehubV1alpha(
  GetFeatureGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGkehubV1alphaResult.fromMap(result);
}
