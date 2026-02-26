import 'package:pulumi/pulumi.dart';
import 'get_feature_args3.dart';
import 'get_feature_result3.dart';

/// Gets details of a single Feature.
Future<GetFeatureResult3> getFeature3(
  GetFeatureArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult3.fromMap(result);
}
