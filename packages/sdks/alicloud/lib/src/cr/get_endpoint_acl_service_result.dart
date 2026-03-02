// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpointAclService.
class GetEndpointAclServiceResult {
  final bool enable;
  final String endpointType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String? moduleName;
  final String status;

  /// Creates a new [GetEndpointAclServiceResult].
  /// [enable] Required.
  /// [endpointType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [moduleName] Optional.
  /// [status] Required.
  GetEndpointAclServiceResult({
    required this.enable,
    required this.endpointType,
    required this.id,
    required this.instanceId,
    this.moduleName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'endpointType': endpointType,
      'id': id,
      'instanceId': instanceId,
      'moduleName': ?moduleName,
      'status': status,
    };
  }

  factory GetEndpointAclServiceResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAclServiceResult(
      enable: map['enable'] as bool,
      endpointType: map['endpointType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      moduleName: map['moduleName'] == null ? null : map['moduleName']! as String,
      status: map['status'] as String,
    );
  }
}

