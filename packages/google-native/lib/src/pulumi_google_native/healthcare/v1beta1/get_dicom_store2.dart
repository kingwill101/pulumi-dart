import 'package:pulumi/pulumi.dart';
import 'get_dicom_store_args2.dart';
import 'get_dicom_store_result2.dart';

/// Gets the specified DICOM store.
Future<GetDicomStoreResult2> getDicomStore2(
  GetDicomStoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDicomStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreResult2.fromMap(result);
}
