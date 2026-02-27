// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLicense.
class GetLicenseArgs3 {
  final Input<String> license;
  final Input<String>? project;

  GetLicenseArgs3({
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

  factory GetLicenseArgs3.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs3(
      license: Input.asInput<String>(map['license']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
