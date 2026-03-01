// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_access_controls_database_access_controls_args_doc}
/// The set of arguments for DatabaseAccessControls.
/// {@endtemplate}
/// {@macro pulumi_index_database_access_controls_database_access_controls_args_doc}
class DatabaseAccessControlsArgs {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  final pulumi.Input<List<String>> allowLists;
  /// The unique ID of the target database.
  final pulumi.Input<int> databaseId;
  /// The unique type of the target database. (`mysql`, `postgresql`)
  final pulumi.Input<String> databaseType;

  /// Creates a new [DatabaseAccessControlsArgs].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  /// [databaseId] The unique ID of the target database.
  /// [databaseType] The unique type of the target database. (`mysql`, `postgresql`)
  DatabaseAccessControlsArgs({
    required List<String> allowLists,
    required int databaseId,
    required String databaseType,
  }) :
      allowLists = pulumi.Input.asInput<List<String>>(allowLists),
      databaseId = pulumi.Input.asInput<int>(databaseId),
      databaseType = pulumi.Input.asInput<String>(databaseType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': allowLists,
      'databaseId': databaseId,
      'databaseType': databaseType,
    };
  }

  factory DatabaseAccessControlsArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccessControlsArgs(
      allowLists: (map['allowLists'] as List).cast<String>(),
      databaseId: map['databaseId'] as int,
      databaseType: map['databaseType'] as String,
    );
  }
}

