// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLicense.
class GetLicenseArgs {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  GetLicenseArgs({
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

  factory GetLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs(
      license: pulumi.Input.asInput<String>(map['license']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
