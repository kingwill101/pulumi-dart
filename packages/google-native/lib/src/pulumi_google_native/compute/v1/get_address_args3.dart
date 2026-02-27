// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAddress.
class GetAddressArgs3 {
  final Input<String> address;
  final Input<String>? project;
  final Input<String> region;

  GetAddressArgs3({
    required this.address,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetAddressArgs3.fromMap(Map<String, dynamic> map) {
    return GetAddressArgs3(
      address: Input.asInput<String>(map['address']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
