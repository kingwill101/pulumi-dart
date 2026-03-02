// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VPCRouteEntryRoutePublishTarget {
  /// Route Publish Status
  final pulumi.Input<String>? publishStatus;
  /// Route publish target instance id.
  final pulumi.Input<String>? targetInstanceId;
  /// Route publish target type
  final pulumi.Input<String> targetType;

  /// Creates a new [VPCRouteEntryRoutePublishTarget].
  /// [publishStatus] Route Publish Status
  /// [targetInstanceId] Route publish target instance id.
  /// [targetType] Route publish target type
  VPCRouteEntryRoutePublishTarget({
    this.publishStatus,
    this.targetInstanceId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishStatus': ?publishStatus,
      'targetInstanceId': ?targetInstanceId,
      'targetType': targetType,
    };
  }

  factory VPCRouteEntryRoutePublishTarget.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryRoutePublishTarget(
      publishStatus: map['publishStatus'] == null ? null : (map['publishStatus']! as String).input(),
      targetInstanceId: map['targetInstanceId'] == null ? null : (map['targetInstanceId']! as String).input(),
      targetType: (map['targetType'] as String).input(),
    );
  }
}

