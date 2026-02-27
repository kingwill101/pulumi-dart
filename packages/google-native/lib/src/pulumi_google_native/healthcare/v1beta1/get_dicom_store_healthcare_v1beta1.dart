import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dicom_store_healthcare_v1beta1_args.dart';
import 'get_dicom_store_healthcare_v1beta1_result.dart';

/// Gets the specified DICOM store.
Future<GetDicomStoreHealthcareV1beta1Result> getDicomStoreHealthcareV1beta1(
  GetDicomStoreHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDicomStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreHealthcareV1beta1Result.fromMap(result);
}
