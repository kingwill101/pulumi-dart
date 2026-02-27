// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntry.
class GetEntryDatacatalogV1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEntryDatacatalogV1Args({
    required this.entryGroupId,
    required this.entryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['entryId'] = entryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntryDatacatalogV1Args.fromMap(Map<String, dynamic> map) {
    return GetEntryDatacatalogV1Args(
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      entryId: pulumi.Input.asInput<String>(map['entryId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
