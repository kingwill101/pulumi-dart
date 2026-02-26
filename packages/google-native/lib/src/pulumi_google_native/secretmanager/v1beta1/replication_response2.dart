// ignore_for_file: unused_element, unnecessary_cast

import 'user_managed_response2.dart';

/// A policy that defines the replication configuration of data.
class ReplicationResponse2 {
  /// The Secret will automatically be replicated without any restrictions.
  final Map<String, dynamic> automatic;

  /// The Secret will only be replicated into the locations specified.
  final UserManagedResponse2 userManaged;

  ReplicationResponse2({
    required this.automatic,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automatic'] = automatic;
    map['userManaged'] = userManaged.toMap();
    return map;
  }

  factory ReplicationResponse2.fromMap(Map<String, dynamic> map) {
    return ReplicationResponse2(
      automatic: (map['automatic'] as Map).cast<String, dynamic>(),
      userManaged: UserManagedResponse2.fromMap(
          (map['userManaged'] as Map).cast<String, dynamic>()),
    );
  }
}
