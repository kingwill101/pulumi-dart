// ignore_for_file: unused_element, unnecessary_cast

import 'user_managed_response_secretmanager_v1beta1.dart';

/// A policy that defines the replication configuration of data.
class ReplicationResponseSecretmanagerV1beta1 {
  /// The Secret will automatically be replicated without any restrictions.
  final Map<String, dynamic> automatic;

  /// The Secret will only be replicated into the locations specified.
  final UserManagedResponseSecretmanagerV1beta1 userManaged;

  /// Creates a new [ReplicationResponseSecretmanagerV1beta1].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  ReplicationResponseSecretmanagerV1beta1({
    required this.automatic,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatic'] = automatic;
    map['userManaged'] = userManaged.toMap();
    return map;
  }

  factory ReplicationResponseSecretmanagerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ReplicationResponseSecretmanagerV1beta1(
      automatic: (map['automatic'] as Map).cast<String, dynamic>(),
      userManaged: UserManagedResponseSecretmanagerV1beta1.fromMap(
          (map['userManaged'] as Map).cast<String, dynamic>()),
    );
  }
}
