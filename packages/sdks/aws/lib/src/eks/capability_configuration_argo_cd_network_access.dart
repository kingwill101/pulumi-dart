// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityConfigurationArgoCdNetworkAccess {
  /// VPC Endpoint IDs.
  final pulumi.Input<List<String>>? vpceIds;

  /// Creates a new [CapabilityConfigurationArgoCdNetworkAccess].
  /// [vpceIds] VPC Endpoint IDs.
  const CapabilityConfigurationArgoCdNetworkAccess({
    this.vpceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpceIds': ?vpceIds,
    };
  }

  factory CapabilityConfigurationArgoCdNetworkAccess.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdNetworkAccess(
      vpceIds: (() { final guardedValue = map['vpceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

