import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_online_store_args2.dart';
import 'get_feature_online_store_result2.dart';

/// Gets details of a single FeatureOnlineStore.
Future<GetFeatureOnlineStoreResult2> getFeatureOnlineStore2(
  GetFeatureOnlineStoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureOnlineStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreResult2.fromMap(result);
}
