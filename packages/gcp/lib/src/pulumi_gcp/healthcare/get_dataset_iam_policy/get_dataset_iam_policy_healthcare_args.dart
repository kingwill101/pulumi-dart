// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatasetIamPolicy.
class GetDatasetIamPolicyHealthcareArgs {
  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> datasetId;

  GetDatasetIamPolicyHealthcareArgs({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory GetDatasetIamPolicyHealthcareArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyHealthcareArgs(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
    );
  }
}
