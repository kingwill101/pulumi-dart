// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettings {
  /// The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  final pulumi.Input<SubResource>? ddosProtectionPlan;
  /// The DDoS protection mode of the public IP
  final pulumi.Input<String>? protectionMode;

  /// Creates a new [DdosSettings].
  /// [ddosProtectionPlan] The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  /// [protectionMode] The DDoS protection mode of the public IP
  DdosSettings({
    this.ddosProtectionPlan,
    this.protectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'protectionMode': ?protectionMode,
    };
  }

  factory DdosSettings.fromMap(Map<String, dynamic> map) {
    return DdosSettings(
      ddosProtectionPlan: map['ddosProtectionPlan'] == null ? null : (SubResource.fromMap((map['ddosProtectionPlan'] as Map).cast<String, dynamic>())).input(),
      protectionMode: map['protectionMode'] == null ? null : (map['protectionMode'] as String).input(),
    );
  }
}

