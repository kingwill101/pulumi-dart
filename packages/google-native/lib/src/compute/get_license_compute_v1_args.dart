// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_license_compute_v1_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_license_compute_v1_args_doc}
class GetLicenseComputeV1Args {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLicenseComputeV1Args].
  /// [license] Required.
  /// [project] Optional.
  GetLicenseComputeV1Args({
    required String license,
    String? project,
  }) :
      license = pulumi.Input.asInput<String>(license),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': license,
      'project': ?project,
    };
  }

  factory GetLicenseComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeV1Args(
      license: map['license'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

