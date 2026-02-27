// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeaturestoreIamPolicy.
class GetFeaturestoreIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeaturestoreIamPolicyAiplatformV1beta1Args({
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

  factory GetFeaturestoreIamPolicyAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeaturestoreIamPolicyAiplatformV1beta1Args(
      featurestoreId: pulumi.Input.asInput<String>(map['featurestoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
