// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of the failover group resource.
class FailoverGroupSpecResponse {
  /// The name of the partner SQL managed instance.
  final pulumi.Input<String>? partnerMI;
  /// The mirroring endpoint public certificate for the partner SQL managed instance. Only PEM format is supported.
  final pulumi.Input<String>? partnerMirroringCert;
  /// The mirroring endpoint URL of the partner SQL managed instance.
  final pulumi.Input<String>? partnerMirroringURL;
  /// The partner sync mode of the SQL managed instance.
  final pulumi.Input<String>? partnerSyncMode;
  /// The role of the SQL managed instance in this failover group.
  final pulumi.Input<String> role;
  /// The shared name of the failover group for this SQL managed instance. Both SQL managed instance and its partner have to use the same shared name.
  final pulumi.Input<String>? sharedName;
  /// The name of the SQL managed instance with this failover group role.
  final pulumi.Input<String>? sourceMI;

  /// Creates a new [FailoverGroupSpecResponse].
  /// [partnerMI] The name of the partner SQL managed instance.
  /// [partnerMirroringCert] The mirroring endpoint public certificate for the partner SQL managed instance. Only PEM format is supported.
  /// [partnerMirroringURL] The mirroring endpoint URL of the partner SQL managed instance.
  /// [partnerSyncMode] The partner sync mode of the SQL managed instance.
  /// [role] The role of the SQL managed instance in this failover group.
  /// [sharedName] The shared name of the failover group for this SQL managed instance. Both SQL managed instance and its partner have to use the same shared name.
  /// [sourceMI] The name of the SQL managed instance with this failover group role.
  const FailoverGroupSpecResponse({
    this.partnerMI,
    this.partnerMirroringCert,
    this.partnerMirroringURL,
    this.partnerSyncMode,
    required this.role,
    this.sharedName,
    this.sourceMI,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerMI': ?partnerMI,
      'partnerMirroringCert': ?partnerMirroringCert,
      'partnerMirroringURL': ?partnerMirroringURL,
      'partnerSyncMode': ?partnerSyncMode,
      'role': role,
      'sharedName': ?sharedName,
      'sourceMI': ?sourceMI,
    };
  }

  factory FailoverGroupSpecResponse.fromMap(Map<String, dynamic> map) {
    return FailoverGroupSpecResponse(
      partnerMI: (() { final guardedValue = map['partnerMI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerMirroringCert: (() { final guardedValue = map['partnerMirroringCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerMirroringURL: (() { final guardedValue = map['partnerMirroringURL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerSyncMode: (() { final guardedValue = map['partnerSyncMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      sharedName: (() { final guardedValue = map['sharedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMI: (() { final guardedValue = map['sourceMI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

