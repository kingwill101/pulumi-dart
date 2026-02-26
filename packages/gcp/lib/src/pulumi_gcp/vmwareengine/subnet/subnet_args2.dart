// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Subnet.
class SubnetArgs2 {
  /// The IP address range of the subnet in CIDR format.
  final Input<String> ipCidrRange;

  /// The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// where n ranges from 1 to 5.
  final Input<String>? name;

  /// The resource name of the private cloud to create a new subnet in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final Input<String> parent;

  SubnetArgs2({
    required this.ipCidrRange,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCidrRange'] = ipCidrRange;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    return map;
  }

  factory SubnetArgs2.fromMap(Map<String, dynamic> map) {
    return SubnetArgs2(
      ipCidrRange: Input.asInput<String>(map['ipCidrRange']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
