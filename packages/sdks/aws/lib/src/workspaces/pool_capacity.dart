// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolCapacity {
  /// Desired number of user sessions for the WorkSpaces Pool.
  final pulumi.Input<int> desiredUserSessions;

  /// Creates a new [PoolCapacity].
  /// [desiredUserSessions] Desired number of user sessions for the WorkSpaces Pool.
  const PoolCapacity({
    required this.desiredUserSessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredUserSessions': desiredUserSessions,
    };
  }

  factory PoolCapacity.fromMap(Map<String, dynamic> map) {
    return PoolCapacity(
      desiredUserSessions: pulumi.Input.fromValue((map['desiredUserSessions'] as num).toInt()),
    );
  }
}
