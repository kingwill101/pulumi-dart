// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_global_database_network_global_database_network_args_doc}
/// The set of arguments for GlobalDatabaseNetwork.
/// {@endtemplate}
/// {@macro pulumi_polardb_global_database_network_global_database_network_args_doc}
class GlobalDatabaseNetworkArgs {
  /// The ID of the primary cluster.
  final pulumi.Input<String> dbClusterId;
  /// The description of the Global Database Network.
  final pulumi.Input<String>? description;

  /// Creates a new [GlobalDatabaseNetworkArgs].
  /// [dbClusterId] The ID of the primary cluster.
  /// [description] The description of the Global Database Network.
  const GlobalDatabaseNetworkArgs({
    required this.dbClusterId,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'description': ?description,
    };
  }

  factory GlobalDatabaseNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GlobalDatabaseNetworkArgs(
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

