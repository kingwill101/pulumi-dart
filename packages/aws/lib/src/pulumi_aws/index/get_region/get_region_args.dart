// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegion.
class GetRegionArgs {
  /// EC2 endpoint of the region to select.
  final Input<String>? endpoint;

  /// Region's name (e.g. `us-east-1`).
  final Input<String>? id;

  /// Full name of the region to select. Use `region` instead.
  final Input<String>? name;

  /// Full name of the region to select (e.g. `us-east-1`), and the region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetRegionArgs({
    this.endpoint,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetRegionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionArgs(
      endpoint: Input.asOptionalInput<String>(map['endpoint']),
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
