// ignore_for_file: unused_element, unnecessary_cast


/// Details the service to which the subnet is delegated.
class DelegationResponse {
  /// The actions permitted to the service upon delegation.
  final List<String> actions;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a subnet. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the service delegation resource.
  final String provisioningState;
  /// The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers).
  final String? serviceName;
  /// Resource type.
  final String? type;

  /// Creates a new [DelegationResponse].
  /// [actions] The actions permitted to the service upon delegation.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a subnet. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service delegation resource.
  /// [serviceName] The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers).
  /// [type] Resource type.
  DelegationResponse({
    required this.actions,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.serviceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
      'type': ?type,
    };
  }

  factory DelegationResponse.fromMap(Map<String, dynamic> map) {
    return DelegationResponse(
      actions: (map['actions'] as List).cast<String>(),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

