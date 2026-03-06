// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteEntriesEntryConflict {
  /// The destination CIDR block of the route entry to query.
  final pulumi.Input<String> cidrBlock;
  /// ID of the CEN instance.
  final pulumi.Input<String> instanceId;
  /// The type of the CEN child instance.
  final pulumi.Input<String> instanceType;
  /// ID of the region where the conflicted route entry is located.
  final pulumi.Input<String> regionId;
  /// Reasons of exceptions.
  final pulumi.Input<String> status;

  /// Creates a new [GetRouteEntriesEntryConflict].
  /// [cidrBlock] The destination CIDR block of the route entry to query.
  /// [instanceId] ID of the CEN instance.
  /// [instanceType] The type of the CEN child instance.
  /// [regionId] ID of the region where the conflicted route entry is located.
  /// [status] Reasons of exceptions.
  const GetRouteEntriesEntryConflict({
    required this.cidrBlock,
    required this.instanceId,
    required this.instanceType,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetRouteEntriesEntryConflict.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesEntryConflict(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

