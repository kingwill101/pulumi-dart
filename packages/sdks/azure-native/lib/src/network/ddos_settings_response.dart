// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettingsResponse {
  /// The DDoS custom policy associated with the public IP.
  final pulumi.Input<SubResourceResponse>? ddosCustomPolicy;
  /// The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  final pulumi.Input<SubResourceResponse>? ddosProtectionPlan;
  /// The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized.
  final pulumi.Input<String>? protectionCoverage;
  /// The DDoS protection mode of the public IP
  final pulumi.Input<String>? protectionMode;

  /// Creates a new [DdosSettingsResponse].
  /// [ddosCustomPolicy] The DDoS custom policy associated with the public IP.
  /// [ddosProtectionPlan] The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  /// [protectionCoverage] The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized.
  /// [protectionMode] The DDoS protection mode of the public IP
  DdosSettingsResponse({
    this.ddosCustomPolicy,
    this.ddosProtectionPlan,
    this.protectionCoverage,
    this.protectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosCustomPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(ddosCustomPolicy, (value) => value.toMap()),
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'protectionCoverage': ?protectionCoverage,
      'protectionMode': ?protectionMode,
    };
  }

  factory DdosSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DdosSettingsResponse(
      ddosCustomPolicy: map['ddosCustomPolicy'] == null ? null : (SubResourceResponse.fromMap((map['ddosCustomPolicy']! as Map).cast<String, dynamic>())).input(),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : (SubResourceResponse.fromMap((map['ddosProtectionPlan']! as Map).cast<String, dynamic>())).input(),
      protectionCoverage: map['protectionCoverage'] == null ? null : (map['protectionCoverage']! as String).input(),
      protectionMode: map['protectionMode'] == null ? null : (map['protectionMode']! as String).input(),
    );
  }
}

