// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_args_doc}
class GetCertificateArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateArgs].
  /// [caPoolId] Required.
  /// [certificateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateArgs({
    required String caPoolId,
    required String certificateId,
    required String location,
    String? project,
  })  : caPoolId = pulumi.Input.asInput<String>(caPoolId),
        certificateId = pulumi.Input.asInput<String>(certificateId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['certificateId'] = certificateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      caPoolId: map['caPoolId'] as String,
      certificateId: map['certificateId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
