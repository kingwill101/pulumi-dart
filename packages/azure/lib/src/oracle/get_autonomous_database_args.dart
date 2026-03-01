// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_get_autonomous_database_args_doc}
/// Arguments for getAutonomousDatabase.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_get_autonomous_database_args_doc}
class GetAutonomousDatabaseArgs {
  /// The name of this Autonomous Database.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Autonomous Database exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutonomousDatabaseArgs].
  /// [name] The name of this Autonomous Database.
  /// [resourceGroupName] The name of the Resource Group where the Autonomous Database exists.
  GetAutonomousDatabaseArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

