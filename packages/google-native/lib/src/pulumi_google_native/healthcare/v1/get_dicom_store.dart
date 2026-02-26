import 'package:pulumi/pulumi.dart';
import 'get_dicom_store_args.dart';
import 'get_dicom_store_result.dart';

/// Gets the specified DICOM store.
Future<GetDicomStoreResult> getDicomStore(
  GetDicomStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDicomStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreResult.fromMap(result);
}
