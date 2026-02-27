import 'package:pulumi/pulumi.dart' hide Config;
import 'get_featurestore_args2.dart';
import 'get_featurestore_result2.dart';

/// Gets details of a single Featurestore.
Future<GetFeaturestoreResult2> getFeaturestore2(
  GetFeaturestoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreResult2.fromMap(result);
}
