// ignore_for_file: unused_element, unnecessary_cast

import 'user_managed_secretmanager_v1beta1.dart';

/// A policy that defines the replication configuration of data.
class ReplicationSecretmanagerV1beta1 {
  /// The Secret will automatically be replicated without any restrictions.
  final Map<String, dynamic>? automatic;

  /// The Secret will only be replicated into the locations specified.
  final UserManagedSecretmanagerV1beta1? userManaged;

  ReplicationSecretmanagerV1beta1({
    this.automatic,
    this.userManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticValue = automatic;
    if (automaticValue != null) {
      map['automatic'] = automaticValue;
    }
    final userManagedValue = userManaged;
    if (userManagedValue != null) {
      map['userManaged'] = userManagedValue.toMap();
    }
    return map;
  }

  factory ReplicationSecretmanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReplicationSecretmanagerV1beta1(
      automatic: map['automatic'] == null
          ? null
          : (map['automatic'] as Map).cast<String, dynamic>(),
      userManaged: map['userManaged'] == null
          ? null
          : UserManagedSecretmanagerV1beta1.fromMap(
              (map['userManaged'] as Map).cast<String, dynamic>()),
    );
  }
}
