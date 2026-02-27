import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_online_store_args.dart';
import 'get_feature_online_store_result.dart';

/// Gets details of a single FeatureOnlineStore.
Future<GetFeatureOnlineStoreResult> getFeatureOnlineStore(
  GetFeatureOnlineStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreResult.fromMap(result);
}
