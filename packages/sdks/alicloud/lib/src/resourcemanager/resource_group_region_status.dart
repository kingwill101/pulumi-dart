// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupRegionStatus {
  /// The status of the region.
  final pulumi.Input<String>? regionId;
  /// The status of the resource group.
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceGroupRegionStatus].
  /// [regionId] The status of the region.
  /// [status] The status of the resource group.
  ResourceGroupRegionStatus({
    this.regionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'status': ?status,
    };
  }

  factory ResourceGroupRegionStatus.fromMap(Map<String, dynamic> map) {
    return ResourceGroupRegionStatus(
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

