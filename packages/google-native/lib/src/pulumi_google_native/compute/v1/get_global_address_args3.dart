// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalAddress.
class GetGlobalAddressArgs3 {
  final Input<String> address;
  final Input<String>? project;

  GetGlobalAddressArgs3({
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

  factory GetGlobalAddressArgs3.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs3(
      address: Input.asInput<String>(map['address']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
