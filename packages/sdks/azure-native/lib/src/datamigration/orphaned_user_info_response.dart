// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of orphaned users on the SQL server database.
class OrphanedUserInfoResponse {
  /// Parent database of the user
  final pulumi.Input<String>? databaseName;

  /// Name of the orphaned user
  final pulumi.Input<String>? name;

  /// Creates a new [OrphanedUserInfoResponse].
  /// [databaseName] Parent database of the user
  /// [name] Name of the orphaned user
  OrphanedUserInfoResponse({this.databaseName, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'databaseName': ?databaseName, 'name': ?name};
  }

  factory OrphanedUserInfoResponse.fromMap(Map<String, dynamic> map) {
    return OrphanedUserInfoResponse(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
