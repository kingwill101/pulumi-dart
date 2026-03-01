// ignore_for_file: unused_element, unnecessary_cast


/// Compute role against which events will be raised.
class RoleSinkInfo {
  /// Compute role ID.
  final String roleId;

  /// Creates a new [RoleSinkInfo].
  /// [roleId] Compute role ID.
  RoleSinkInfo({
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleId': roleId,
    };
  }

  factory RoleSinkInfo.fromMap(Map<String, dynamic> map) {
    return RoleSinkInfo(
      roleId: map['roleId'] as String,
    );
  }
}

