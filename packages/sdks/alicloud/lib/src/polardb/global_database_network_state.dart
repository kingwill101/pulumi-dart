// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalDatabaseNetwork resources.
class GlobalDatabaseNetworkState {
  /// The ID of the primary cluster.
  final pulumi.Input<String>? dbClusterId;
  /// The description of the Global Database Network.
  final pulumi.Input<String>? description;
  /// The status of the Global Database Network.
  final pulumi.Input<String>? status;

  /// Creates a new [GlobalDatabaseNetworkState].
  /// [dbClusterId] The ID of the primary cluster.
  /// [description] The description of the Global Database Network.
  /// [status] The status of the Global Database Network.
  const GlobalDatabaseNetworkState({
    this.dbClusterId,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': ?dbClusterId,
      'description': ?description,
      'status': ?status,
    };
  }

  factory GlobalDatabaseNetworkState.fromMap(Map<String, dynamic> map) {
    return GlobalDatabaseNetworkState(
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

