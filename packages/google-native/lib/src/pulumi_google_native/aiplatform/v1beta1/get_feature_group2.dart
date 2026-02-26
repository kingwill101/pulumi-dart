import 'package:pulumi/pulumi.dart';
import 'get_feature_group_args2.dart';
import 'get_feature_group_result2.dart';

/// Gets details of a single FeatureGroup.
Future<GetFeatureGroupResult2> getFeatureGroup2(
  GetFeatureGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupResult2.fromMap(result);
}
