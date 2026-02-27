import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_store_args.dart';
import 'get_consent_store_result.dart';

/// Gets the specified consent store.
Future<GetConsentStoreResult> getConsentStore(
  GetConsentStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsentStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreResult.fromMap(result);
}
