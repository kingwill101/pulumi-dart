// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The security settings of an agent pool.
class AgentPoolSecurityProfile {
  /// Secure Boot is a feature of Trusted Launch which ensures that only signed operating systems and drivers can boot. For more details, see aka.ms/aks/trustedlaunch.  If not specified, the default is false.
  final pulumi.Input<bool>? enableSecureBoot;

  /// vTPM is a Trusted Launch feature for configuring a dedicated secure vault for keys and measurements held locally on the node. For more details, see aka.ms/aks/trustedlaunch. If not specified, the default is false.
  final pulumi.Input<bool>? enableVTPM;

  /// SSH access method of an agent pool.
  final pulumi.Input<String>? sshAccess;

  /// Creates a new [AgentPoolSecurityProfile].
  /// [enableSecureBoot] Secure Boot is a feature of Trusted Launch which ensures that only signed operating systems and drivers can boot. For more details, see aka.ms/aks/trustedlaunch.  If not specified, the default is false.
  /// [enableVTPM] vTPM is a Trusted Launch feature for configuring a dedicated secure vault for keys and measurements held locally on the node. For more details, see aka.ms/aks/trustedlaunch. If not specified, the default is false.
  /// [sshAccess] SSH access method of an agent pool.
  AgentPoolSecurityProfile({
    this.enableSecureBoot,
    this.enableVTPM,
    this.sshAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSecureBoot': ?enableSecureBoot,
      'enableVTPM': ?enableVTPM,
      'sshAccess': ?sshAccess,
    };
  }

  factory AgentPoolSecurityProfile.fromMap(Map<String, dynamic> map) {
    return AgentPoolSecurityProfile(
      enableSecureBoot: (() {
        final guardedValue = map['enableSecureBoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVTPM: (() {
        final guardedValue = map['enableVTPM'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sshAccess: (() {
        final guardedValue = map['sshAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
