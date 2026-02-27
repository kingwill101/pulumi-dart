import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_group_feature_args2.dart';
import 'get_feature_group_feature_result2.dart';

/// Gets details of a single Feature.
Future<GetFeatureGroupFeatureResult2> getFeatureGroupFeature2(
  GetFeatureGroupFeatureArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroupFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureResult2.fromMap(result);
}
