// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPermission.
class GetPermissionResult {
  final String? enable;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The current service enable status.
  final String status;

  /// Creates a new [GetPermissionResult].
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The current service enable status.
  const GetPermissionResult({
    this.enable,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'id': id,
      'status': status,
    };
  }

  factory GetPermissionResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionResult(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

