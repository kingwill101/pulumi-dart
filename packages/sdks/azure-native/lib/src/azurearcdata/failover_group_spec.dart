// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of the failover group resource.
class FailoverGroupSpec {
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

  /// Creates a new [FailoverGroupSpec].
  /// [partnerMI] The name of the partner SQL managed instance.
  /// [partnerMirroringCert] The mirroring endpoint public certificate for the partner SQL managed instance. Only PEM format is supported.
  /// [partnerMirroringURL] The mirroring endpoint URL of the partner SQL managed instance.
  /// [partnerSyncMode] The partner sync mode of the SQL managed instance.
  /// [role] The role of the SQL managed instance in this failover group.
  /// [sharedName] The shared name of the failover group for this SQL managed instance. Both SQL managed instance and its partner have to use the same shared name.
  /// [sourceMI] The name of the SQL managed instance with this failover group role.
  FailoverGroupSpec({
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

  factory FailoverGroupSpec.fromMap(Map<String, dynamic> map) {
    return FailoverGroupSpec(
      partnerMI: map['partnerMI'] == null ? null : (map['partnerMI'] as String).input(),
      partnerMirroringCert: map['partnerMirroringCert'] == null ? null : (map['partnerMirroringCert'] as String).input(),
      partnerMirroringURL: map['partnerMirroringURL'] == null ? null : (map['partnerMirroringURL'] as String).input(),
      partnerSyncMode: map['partnerSyncMode'] == null ? null : (map['partnerSyncMode'] as String).input(),
      role: (map['role'] as String).input(),
      sharedName: map['sharedName'] == null ? null : (map['sharedName'] as String).input(),
      sourceMI: map['sourceMI'] == null ? null : (map['sourceMI'] as String).input(),
    );
  }
}

