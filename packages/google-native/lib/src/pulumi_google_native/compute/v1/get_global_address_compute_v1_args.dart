// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalAddress.
class GetGlobalAddressComputeV1Args {
  final pulumi.Input<String> address;
  final pulumi.Input<String>? project;

  GetGlobalAddressComputeV1Args({
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

  factory GetGlobalAddressComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressComputeV1Args(
      address: pulumi.Input.asInput<String>(map['address']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
