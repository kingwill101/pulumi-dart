// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_certificate_map_entry_args_doc}
/// Arguments for getCertificateMapEntry.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_certificate_map_entry_args_doc}
class GetCertificateMapEntryArgs {
  final pulumi.Input<String> certificateMapEntryId;
  final pulumi.Input<String> certificateMapId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateMapEntryArgs].
  /// [certificateMapEntryId] Required.
  /// [certificateMapId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateMapEntryArgs({
    required String certificateMapEntryId,
    required String certificateMapId,
    required String location,
    String? project,
  })  : certificateMapEntryId =
            pulumi.Input.asInput<String>(certificateMapEntryId),
        certificateMapId = pulumi.Input.asInput<String>(certificateMapId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateMapEntryId'] = certificateMapEntryId;
    map['certificateMapId'] = certificateMapId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapEntryArgs(
      certificateMapEntryId: map['certificateMapEntryId'] as String,
      certificateMapId: map['certificateMapId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
