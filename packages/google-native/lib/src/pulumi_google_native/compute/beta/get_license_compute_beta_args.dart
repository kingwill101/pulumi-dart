// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLicense.
class GetLicenseComputeBetaArgs {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  GetLicenseComputeBetaArgs({
    required this.license,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['license'] = license;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLicenseComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeBetaArgs(
      license: pulumi.Input.asInput<String>(map['license']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
