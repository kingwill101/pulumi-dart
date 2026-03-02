// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityConfigurationArgoCdNetworkAccess {
  /// VPC Endpoint IDs.
  final pulumi.Input<List<String>>? vpceIds;

  /// Creates a new [CapabilityConfigurationArgoCdNetworkAccess].
  /// [vpceIds] VPC Endpoint IDs.
  CapabilityConfigurationArgoCdNetworkAccess({
    this.vpceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpceIds': ?vpceIds,
    };
  }

  factory CapabilityConfigurationArgoCdNetworkAccess.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdNetworkAccess(
      vpceIds: map['vpceIds'] == null ? null : (((map['vpceIds'] as List).cast<String>()).input()).input(),
    );
  }
}

