import 'package:pulumi/pulumi.dart';
import 'get_feature_group_args.dart';
import 'get_feature_group_result.dart';

/// Gets details of a single FeatureGroup.
Future<GetFeatureGroupResult> getFeatureGroup(
  GetFeatureGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupResult.fromMap(result);
}
