// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent profile for the Fleet hub.
class AgentProfileResponse {
  /// The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  final pulumi.Input<String>? subnetId;
  /// The virtual machine size of the Fleet hub.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [AgentProfileResponse].
  /// [subnetId] The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.
  /// [vmSize] The virtual machine size of the Fleet hub.
  AgentProfileResponse({
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory AgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return AgentProfileResponse(
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

