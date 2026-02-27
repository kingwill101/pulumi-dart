import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_featurestore_args.dart';
import 'get_featurestore_result.dart';

/// Gets details of a single Featurestore.
Future<GetFeaturestoreResult> getFeaturestore(
  GetFeaturestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreResult.fromMap(result);
}
