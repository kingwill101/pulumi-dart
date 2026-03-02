// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPhysicalConnectionService.
class GetPhysicalConnectionServiceResult {
  final String? enable;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The current service enable status.
  final String status;

  /// Creates a new [GetPhysicalConnectionServiceResult].
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The current service enable status.
  GetPhysicalConnectionServiceResult({
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

  factory GetPhysicalConnectionServiceResult.fromMap(Map<String, dynamic> map) {
    return GetPhysicalConnectionServiceResult(
      enable: map['enable'] == null ? null : map['enable']! as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

