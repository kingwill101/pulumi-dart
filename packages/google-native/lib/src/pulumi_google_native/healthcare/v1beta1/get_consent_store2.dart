import 'package:pulumi/pulumi.dart';
import 'get_consent_store_args2.dart';
import 'get_consent_store_result2.dart';

/// Gets the specified consent store.
Future<GetConsentStoreResult2> getConsentStore2(
  GetConsentStoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getConsentStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreResult2.fromMap(result);
}
