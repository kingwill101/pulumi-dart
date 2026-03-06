// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica properties of a server.
class Replica {
  /// Type of operation to apply on the read replica. This property is write only. Standalone means that the read replica will be promoted to a standalone server, and will become a completely independent entity from the replication set. Switchover means that the read replica will roles with the primary server.
  final pulumi.Input<String>? promoteMode;
  /// Data synchronization option to use when processing the operation specified in the promoteMode property. This property is write only.
  final pulumi.Input<String>? promoteOption;
  /// Role of the server in a replication set.
  final pulumi.Input<String>? role;

  /// Creates a new [Replica].
  /// [promoteMode] Type of operation to apply on the read replica. This property is write only. Standalone means that the read replica will be promoted to a standalone server, and will become a completely independent entity from the replication set. Switchover means that the read replica will roles with the primary server.
  /// [promoteOption] Data synchronization option to use when processing the operation specified in the promoteMode property. This property is write only.
  /// [role] Role of the server in a replication set.
  const Replica({
    this.promoteMode,
    this.promoteOption,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'promoteMode': ?promoteMode,
      'promoteOption': ?promoteOption,
      'role': ?role,
    };
  }

  factory Replica.fromMap(Map<String, dynamic> map) {
    return Replica(
      promoteMode: (() { final guardedValue = map['promoteMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promoteOption: (() { final guardedValue = map['promoteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

