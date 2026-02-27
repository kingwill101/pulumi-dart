// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntryGroupIamPolicy.
class GetEntryGroupIamPolicyDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEntryGroupIamPolicyDatacatalogV1beta1Args({
    required this.entryGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntryGroupIamPolicyDatacatalogV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyDatacatalogV1beta1Args(
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
