// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGlobalAddress.
class GetGlobalAddressArgs {
  final Input<String> address;
  final Input<String>? project;

  GetGlobalAddressArgs({
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

  factory GetGlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs(
      address: Input.asInput<String>(map['address']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
