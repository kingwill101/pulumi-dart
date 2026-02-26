import 'package:pulumi/pulumi.dart';
import 'get_fhir_store_args.dart';
import 'get_fhir_store_result.dart';

/// Gets the configuration of the specified FHIR store.
Future<GetFhirStoreResult> getFhirStore(
  GetFhirStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getFhirStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreResult.fromMap(result);
}
