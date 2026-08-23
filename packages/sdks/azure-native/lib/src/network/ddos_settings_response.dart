// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Contains the DDoS protection settings of the public IP.
class DdosSettingsResponse {
  /// The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  final pulumi.Input<SubResourceResponse>? ddosProtectionPlan;
  /// The DDoS protection mode of the public IP
  final pulumi.Input<String>? protectionMode;

  /// Creates a new [DdosSettingsResponse].
  /// [ddosProtectionPlan] The DDoS protection plan associated with the public IP. Can only be set if ProtectionMode is Enabled
  /// [protectionMode] The DDoS protection mode of the public IP
  const DdosSettingsResponse({
    this.ddosProtectionPlan,
    this.protectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtectionPlan': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(ddosProtectionPlan, (value) => value.toMap()),
      'protectionMode': ?protectionMode,
    };
  }

  factory DdosSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DdosSettingsResponse(
      ddosProtectionPlan: (() { final guardedValue = map['ddosProtectionPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionMode: (() { final guardedValue = map['protectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
