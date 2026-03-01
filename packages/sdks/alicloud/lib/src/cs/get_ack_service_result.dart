// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAckService.
class GetAckServiceResult {
  final String? enable;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The current service enable status.
  final String status;
  final String type;

  /// Creates a new [GetAckServiceResult].
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The current service enable status.
  /// [type] Required.
  GetAckServiceResult({
    this.enable,
    required this.id,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'id': id,
      'status': status,
      'type': type,
    };
  }

  factory GetAckServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAckServiceResult(
      enable: map['enable'] == null ? null : map['enable'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

