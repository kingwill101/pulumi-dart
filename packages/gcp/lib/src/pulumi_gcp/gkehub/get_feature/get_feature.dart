import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_args.dart';
import 'get_feature_result.dart';

/// Retrieves the details of a specific GKE Hub Feature. Use this data source to retrieve the feature's configuration and state.
Future<GetFeatureResult> getFeature(
  GetFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeature:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult.fromMap(result);
}
