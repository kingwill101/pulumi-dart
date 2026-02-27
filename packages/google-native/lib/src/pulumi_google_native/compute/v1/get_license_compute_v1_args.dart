// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLicense.
class GetLicenseComputeV1Args {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  GetLicenseComputeV1Args({
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

  factory GetLicenseComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeV1Args(
      license: pulumi.Input.asInput<String>(map['license']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
