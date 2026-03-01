// ignore_for_file: unused_element, unnecessary_cast


/// Virtual network model
class VirtualNetworkResponse {
  /// can be used in vm creation/deletion
  final bool assignable;
  /// virtual network id (privateCloudId:vsphereId)
  final String id;
  /// Azure region
  final String location;
  /// {VirtualNetworkName}
  final String name;
  /// The Private Cloud id
  final String privateCloudId;
  /// {resourceProviderNamespace}/{resourceType}
  final String type;

  /// Creates a new [VirtualNetworkResponse].
  /// [assignable] can be used in vm creation/deletion
  /// [id] virtual network id (privateCloudId:vsphereId)
  /// [location] Azure region
  /// [name] {VirtualNetworkName}
  /// [privateCloudId] The Private Cloud id
  /// [type] {resourceProviderNamespace}/{resourceType}
  VirtualNetworkResponse({
    required this.assignable,
    required this.id,
    required this.location,
    required this.name,
    required this.privateCloudId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignable': assignable,
      'id': id,
      'location': location,
      'name': name,
      'privateCloudId': privateCloudId,
      'type': type,
    };
  }

  factory VirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkResponse(
      assignable: map['assignable'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateCloudId: map['privateCloudId'] as String,
      type: map['type'] as String,
    );
  }
}

