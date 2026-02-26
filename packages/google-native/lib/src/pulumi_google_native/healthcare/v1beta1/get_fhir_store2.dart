import 'package:pulumi/pulumi.dart';
import 'get_fhir_store_args2.dart';
import 'get_fhir_store_result2.dart';

/// Gets the configuration of the specified FHIR store.
Future<GetFhirStoreResult2> getFhirStore2(
  GetFhirStoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getFhirStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreResult2.fromMap(result);
}
