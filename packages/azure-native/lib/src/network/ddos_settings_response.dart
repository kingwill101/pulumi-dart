// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettingsResponse {
  /// The DDoS custom policy associated with the public IP.
  final SubResourceResponse? ddosCustomPolicy;
  /// The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  final SubResourceResponse? ddosProtectionPlan;
  /// The DDoS protection policy customizability of the public IP. Only standard coverage will have the ability to be customized.
  final String? protectionCoverage;
  /// The DDoS protection mode of the public IP
  final String? protectionMode;

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
      'ddosCustomPolicy': ?ddosCustomPolicy == null ? null : ddosCustomPolicy!.toMap(),
      'ddosProtectionPlan': ?ddosProtectionPlan == null ? null : ddosProtectionPlan!.toMap(),
      'protectionCoverage': ?protectionCoverage,
      'protectionMode': ?protectionMode,
    };
  }

  factory DdosSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DdosSettingsResponse(
      ddosCustomPolicy: map['ddosCustomPolicy'] == null ? null : SubResourceResponse.fromMap((map['ddosCustomPolicy'] as Map).cast<String, dynamic>()),
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : SubResourceResponse.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>()),
      protectionCoverage: map['protectionCoverage'] == null ? null : map['protectionCoverage'] as String,
      protectionMode: map['protectionMode'] == null ? null : map['protectionMode'] as String,
    );
  }
}

