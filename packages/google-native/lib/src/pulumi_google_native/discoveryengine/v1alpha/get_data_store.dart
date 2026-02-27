import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_store_args.dart';
import 'get_data_store_result.dart';

/// Gets a DataStore.
Future<GetDataStoreResult> getDataStore(
  GetDataStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getDataStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataStoreResult.fromMap(result);
}
