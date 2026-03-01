// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_certificate_map_args_doc}
/// Arguments for getCertificateMap.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_certificate_map_args_doc}
class GetCertificateMapArgs {
  final pulumi.Input<String> certificateMapId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateMapArgs].
  /// [certificateMapId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateMapArgs({
    required String certificateMapId,
    required String location,
    String? project,
  }) : certificateMapId = pulumi.Input.asInput<String>(certificateMapId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapId': certificateMapId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapArgs(
      certificateMapId: map['certificateMapId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
