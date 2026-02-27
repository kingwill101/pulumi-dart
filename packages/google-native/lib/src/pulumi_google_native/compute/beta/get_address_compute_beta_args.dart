// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAddress.
class GetAddressComputeBetaArgs {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetAddressComputeBetaArgs({
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

  factory GetAddressComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressComputeBetaArgs(
      address: pulumi.Input.asInput<String>(map['address']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
