// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDicomStoreIamPolicy.
class GetDicomStoreIamPolicyArgs {
  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> dicomStoreId;

  GetDicomStoreIamPolicyArgs({
    required this.dicomStoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dicomStoreId'] = dicomStoreId;
    return map;
  }

  factory GetDicomStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreIamPolicyArgs(
      dicomStoreId: pulumi.Input.asInput<String>(map['dicomStoreId']),
    );
  }
}
