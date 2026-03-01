// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_replication_slot_replication_slot_args_doc}
/// The set of arguments for ReplicationSlot.
/// {@endtemplate}
/// {@macro pulumi_index_replication_slot_replication_slot_args_doc}
class ReplicationSlotArgs {
  /// Which database to create the replication slot on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// The name of the replication slot.
  final pulumi.Input<String>? name;
  /// Sets the output plugin.
  final pulumi.Input<String> plugin;

  /// Creates a new [ReplicationSlotArgs].
  /// [database] Which database to create the replication slot on. Defaults to provider database.
  /// [name] The name of the replication slot.
  /// [plugin] Sets the output plugin.
  ReplicationSlotArgs({
    String? database,
    String? name,
    required String plugin,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      plugin = pulumi.Input.asInput<String>(plugin);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'plugin': plugin,
    };
  }

  factory ReplicationSlotArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationSlotArgs(
      database: map['database'] == null ? null : map['database'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      plugin: map['plugin'] as String,
    );
  }
}

