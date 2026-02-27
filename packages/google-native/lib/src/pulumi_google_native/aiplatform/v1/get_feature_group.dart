import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_group_args.dart';
import 'get_feature_group_result.dart';

/// Gets details of a single FeatureGroup.
Future<GetFeatureGroupResult> getFeatureGroup(
  GetFeatureGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupResult.fromMap(result);
}
