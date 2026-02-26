// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatasetIamPolicy.
class GetDatasetIamPolicyArgs2 {
  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final Input<String> datasetId;

  GetDatasetIamPolicyArgs2({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory GetDatasetIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
    );
  }
}
