import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_args2.dart';
import 'get_feature_result2.dart';

/// Gets details of a single Feature.
Future<GetFeatureResult2> getFeature2(
  GetFeatureArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult2.fromMap(result);
}
