// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalAddress.
class GetGlobalAddressComputeBetaArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  GetGlobalAddressComputeBetaArgs({
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

  factory GetGlobalAddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressComputeBetaArgs(
      address: pulumi.Input.asInput<String>(map['address']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
