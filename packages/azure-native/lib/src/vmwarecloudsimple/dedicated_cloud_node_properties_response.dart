// ignore_for_file: unused_element, unnecessary_cast


/// Properties of dedicated cloud node
class DedicatedCloudNodePropertiesResponse {
  /// Availability Zone id, e.g. "az1"
  final String availabilityZoneId;
  /// Availability Zone name, e.g. "Availability Zone 1"
  final String availabilityZoneName;
  /// VMWare Cloud Rack Name
  final String cloudRackName;
  /// date time the resource was created
  final String created;
  /// SKU's id
  final String id;
  /// SKU's name
  final String name;
  /// count of nodes to create
  final int nodesCount;
  /// Placement Group id, e.g. "n1"
  final String placementGroupId;
  /// Placement Name, e.g. "Placement Group 1"
  final String placementGroupName;
  /// Private Cloud Id
  final String privateCloudId;
  /// Resource Pool Name
  final String privateCloudName;
  /// The provisioning status of the resource
  final String provisioningState;
  /// purchase id
  final String purchaseId;
  /// Node status, indicates is private cloud set up on this node or not
  final String status;
  /// VMWare Cluster Name
  final String vmwareClusterName;

  /// Creates a new [DedicatedCloudNodePropertiesResponse].
  /// [availabilityZoneId] Availability Zone id, e.g. "az1"
  /// [availabilityZoneName] Availability Zone name, e.g. "Availability Zone 1"
  /// [cloudRackName] VMWare Cloud Rack Name
  /// [created] date time the resource was created
  /// [id] SKU's id
  /// [name] SKU's name
  /// [nodesCount] count of nodes to create
  /// [placementGroupId] Placement Group id, e.g. "n1"
  /// [placementGroupName] Placement Name, e.g. "Placement Group 1"
  /// [privateCloudId] Private Cloud Id
  /// [privateCloudName] Resource Pool Name
  /// [provisioningState] The provisioning status of the resource
  /// [purchaseId] purchase id
  /// [status] Node status, indicates is private cloud set up on this node or not
  /// [vmwareClusterName] VMWare Cluster Name
  DedicatedCloudNodePropertiesResponse({
    required this.availabilityZoneId,
    required this.availabilityZoneName,
    required this.cloudRackName,
    required this.created,
    required this.id,
    required this.name,
    required this.nodesCount,
    required this.placementGroupId,
    required this.placementGroupName,
    required this.privateCloudId,
    required this.privateCloudName,
    required this.provisioningState,
    required this.purchaseId,
    required this.status,
    required this.vmwareClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
      'availabilityZoneName': availabilityZoneName,
      'cloudRackName': cloudRackName,
      'created': created,
      'id': id,
      'name': name,
      'nodesCount': nodesCount,
      'placementGroupId': placementGroupId,
      'placementGroupName': placementGroupName,
      'privateCloudId': privateCloudId,
      'privateCloudName': privateCloudName,
      'provisioningState': provisioningState,
      'purchaseId': purchaseId,
      'status': status,
      'vmwareClusterName': vmwareClusterName,
    };
  }

  factory DedicatedCloudNodePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedCloudNodePropertiesResponse(
      availabilityZoneId: map['availabilityZoneId'] as String,
      availabilityZoneName: map['availabilityZoneName'] as String,
      cloudRackName: map['cloudRackName'] as String,
      created: map['created'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nodesCount: map['nodesCount'] as int,
      placementGroupId: map['placementGroupId'] as String,
      placementGroupName: map['placementGroupName'] as String,
      privateCloudId: map['privateCloudId'] as String,
      privateCloudName: map['privateCloudName'] as String,
      provisioningState: map['provisioningState'] as String,
      purchaseId: map['purchaseId'] as String,
      status: map['status'] as String,
      vmwareClusterName: map['vmwareClusterName'] as String,
    );
  }
}

