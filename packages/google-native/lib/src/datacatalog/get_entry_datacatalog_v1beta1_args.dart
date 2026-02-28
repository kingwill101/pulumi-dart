// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_entry_datacatalog_v1beta1_args_doc}
/// Arguments for getEntry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_entry_datacatalog_v1beta1_args_doc}
class GetEntryDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryDatacatalogV1beta1Args].
  /// [entryGroupId] Required.
  /// [entryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryDatacatalogV1beta1Args({
    required String entryGroupId,
    required String entryId,
    required String location,
    String? project,
  }) :
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      entryId = pulumi.Input.asInput<String>(entryId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'entryId': entryId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntryDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntryDatacatalogV1beta1Args(
      entryGroupId: map['entryGroupId'] as String,
      entryId: map['entryId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

