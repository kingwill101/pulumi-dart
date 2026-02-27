import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_group_feature_args.dart';
import 'get_feature_group_feature_result.dart';

/// Gets details of a single Feature.
Future<GetFeatureGroupFeatureResult> getFeatureGroupFeature(
  GetFeatureGroupFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureResult.fromMap(result);
}
