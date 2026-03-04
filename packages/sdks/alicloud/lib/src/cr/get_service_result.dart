// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceResult {
  final String? enable;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String password;

  /// The current service enable status.
  final String status;

  /// Creates a new [GetServiceResult].
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] Required.
  /// [status] The current service enable status.
  GetServiceResult({
    this.enable,
    required this.id,
    required this.password,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'id': id,
      'password': password,
      'status': status,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      password: map['password'] as String,
      status: map['status'] as String,
    );
  }
}
