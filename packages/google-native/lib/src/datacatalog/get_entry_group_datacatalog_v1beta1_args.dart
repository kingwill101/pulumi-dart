// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_entry_group_datacatalog_v1beta1_args_doc}
/// Arguments for getEntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_entry_group_datacatalog_v1beta1_args_doc}
class GetEntryGroupDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetEntryGroupDatacatalogV1beta1Args].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  GetEntryGroupDatacatalogV1beta1Args({
    required String entryGroupId,
    required String location,
    String? project,
    String? readMask,
  })  : entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        readMask = pulumi.Input.asOptionalInput<String>(readMask);

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
      entryGroupId: map['entryGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      readMask: map['readMask'] == null ? null : map['readMask'] as String,
    );
  }
}
