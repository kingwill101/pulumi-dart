// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalAddress.
class GetGlobalAddressArgs2 {
  final Input<String> address;
  final Input<String>? project;

  GetGlobalAddressArgs2({
    required this.address,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalAddressArgs2.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs2(
      address: Input.asInput<String>(map['address']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
