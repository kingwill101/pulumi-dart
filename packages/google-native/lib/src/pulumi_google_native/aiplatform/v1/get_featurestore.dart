import 'package:pulumi/pulumi.dart';
import 'get_featurestore_args.dart';
import 'get_featurestore_result.dart';

/// Gets details of a single Featurestore.
Future<GetFeaturestoreResult> getFeaturestore(
  GetFeaturestoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreResult.fromMap(result);
}
