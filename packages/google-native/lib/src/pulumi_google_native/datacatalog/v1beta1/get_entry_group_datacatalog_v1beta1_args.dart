// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntryGroup.
class GetEntryGroupDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  GetEntryGroupDatacatalogV1beta1Args({
    required this.entryGroupId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readMaskValue = readMask;
    if (readMaskValue != null) {
      map['readMask'] = readMaskValue;
    }
    return map;
  }

  factory GetEntryGroupDatacatalogV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEntryGroupDatacatalogV1beta1Args(
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readMask: pulumi.Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
