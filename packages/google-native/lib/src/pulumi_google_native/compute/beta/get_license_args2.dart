// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLicense.
class GetLicenseArgs2 {
  final Input<String> license;
  final Input<String>? project;

  GetLicenseArgs2({
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

  factory GetLicenseArgs2.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs2(
      license: Input.asInput<String>(map['license']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
