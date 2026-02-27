// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFeaturestoreIamPolicy.
class GetFeaturestoreIamPolicyArgs2 {
  final Input<String> featurestoreId;
  final Input<String> location;
  final Input<String>? project;

  GetFeaturestoreIamPolicyArgs2({
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featurestoreId'] = featurestoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeaturestoreIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreIamPolicyArgs2(
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
