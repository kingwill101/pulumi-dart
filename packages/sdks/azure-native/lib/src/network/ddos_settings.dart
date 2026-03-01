// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettings {
  /// The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  final SubResource? ddosProtectionPlan;
  /// The DDoS protection mode of the public IP
  final String? protectionMode;

  /// Creates a new [DdosSettings].
  /// [ddosProtectionPlan] The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  /// [protectionMode] The DDoS protection mode of the public IP
  DdosSettings({
    this.ddosProtectionPlan,
    this.protectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtectionPlan': ?ddosProtectionPlan == null ? null : ddosProtectionPlan!.toMap(),
      'protectionMode': ?protectionMode,
    };
  }

  factory DdosSettings.fromMap(Map<String, dynamic> map) {
    return DdosSettings(
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : SubResource.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>()),
      protectionMode: map['protectionMode'] == null ? null : map['protectionMode'] as String,
    );
  }
}

