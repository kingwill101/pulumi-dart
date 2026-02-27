import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_view_args.dart';
import 'get_feature_view_result.dart';

/// Gets details of a single FeatureView.
Future<GetFeatureViewResult> getFeatureView(
  GetFeatureViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewResult.fromMap(result);
}
