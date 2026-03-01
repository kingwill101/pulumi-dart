// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedCloudService.
class GetDedicatedCloudServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  final String gatewaySubnet;
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudServices/{dedicatedCloudServiceName}
  final String id;
  /// indicates whether account onboarded or not in a given region
  final String isAccountOnboarded;
  /// Azure region
  final String location;
  /// {dedicatedCloudServiceName}
  final String name;
  /// total nodes purchased
  final int nodes;
  /// link to a service management web portal
  final String serviceURL;
  /// The list of tags
  final Map<String, String>? tags;
  /// {resourceProviderNamespace}/{resourceType}
  final String type;

  /// Creates a new [GetDedicatedCloudServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [gatewaySubnet] gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  /// [id] /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudServices/{dedicatedCloudServiceName}
  /// [isAccountOnboarded] indicates whether account onboarded or not in a given region
  /// [location] Azure region
  /// [name] {dedicatedCloudServiceName}
  /// [nodes] total nodes purchased
  /// [serviceURL] link to a service management web portal
  /// [tags] The list of tags
  /// [type] {resourceProviderNamespace}/{resourceType}
  GetDedicatedCloudServiceResult({
    required this.azureApiVersion,
    required this.gatewaySubnet,
    required this.id,
    required this.isAccountOnboarded,
    required this.location,
    required this.name,
    required this.nodes,
    required this.serviceURL,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'gatewaySubnet': gatewaySubnet,
      'id': id,
      'isAccountOnboarded': isAccountOnboarded,
      'location': location,
      'name': name,
      'nodes': nodes,
      'serviceURL': serviceURL,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDedicatedCloudServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedCloudServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      gatewaySubnet: map['gatewaySubnet'] as String,
      id: map['id'] as String,
      isAccountOnboarded: map['isAccountOnboarded'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nodes: map['nodes'] as int,
      serviceURL: map['serviceURL'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

