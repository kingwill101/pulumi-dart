// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_license_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_license_args_doc}
class GetLicenseArgs {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLicenseArgs].
  /// [license] Required.
  /// [project] Optional.
  GetLicenseArgs({
    required String license,
    String? project,
  })  : license = pulumi.Input.asInput<String>(license),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['license'] = license;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs(
      license: map['license'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
