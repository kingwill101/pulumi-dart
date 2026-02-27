import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_view_args2.dart';
import 'get_feature_view_result2.dart';

/// Gets details of a single FeatureView.
Future<GetFeatureViewResult2> getFeatureView2(
  GetFeatureViewArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureView',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewResult2.fromMap(result);
}
