// ignore_for_file: unused_element, unnecessary_cast

import 'automatic.dart';
import 'user_managed.dart';

/// A policy that defines the replication and encryption configuration of data.
class Replication {
  /// The Secret will automatically be replicated without any restrictions.
  final Automatic? automatic;

  /// The Secret will only be replicated into the locations specified.
  final UserManaged? userManaged;

  /// Creates a new [Replication].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  Replication({
    this.automatic,
    this.userManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticValue = automatic;
    if (automaticValue != null) {
      map['automatic'] = automaticValue.toMap();
    }
    final userManagedValue = userManaged;
    if (userManagedValue != null) {
      map['userManaged'] = userManagedValue.toMap();
    }
    return map;
  }

  factory Replication.fromMap(Map<String, dynamic> map) {
    return Replication(
      automatic: map['automatic'] == null
          ? null
          : Automatic.fromMap(
              (map['automatic'] as Map).cast<String, dynamic>()),
      userManaged: map['userManaged'] == null
          ? null
          : UserManaged.fromMap(
              (map['userManaged'] as Map).cast<String, dynamic>()),
    );
  }
}
