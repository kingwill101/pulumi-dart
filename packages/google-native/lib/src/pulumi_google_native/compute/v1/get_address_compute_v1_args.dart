// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAddress.
class GetAddressComputeV1Args {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetAddressComputeV1Args({
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

  factory GetAddressComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetAddressComputeV1Args(
      address: pulumi.Input.asInput<String>(map['address']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
