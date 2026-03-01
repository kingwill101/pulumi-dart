// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrafficMirrorService.
class GetTrafficMirrorServiceResult {
  final String? enable;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The current service enable status.
  final String status;

  /// Creates a new [GetTrafficMirrorServiceResult].
  /// [enable] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The current service enable status.
  GetTrafficMirrorServiceResult({
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

  factory GetTrafficMirrorServiceResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorServiceResult(
      enable: map['enable'] == null ? null : map['enable'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

