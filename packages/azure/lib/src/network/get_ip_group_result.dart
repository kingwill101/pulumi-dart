// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpGroup.
class GetIpGroupResult {
  /// A list of CIDRs or IP addresses.
  final List<String> cidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The supported Azure location where the resource exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetIpGroupResult].
  /// [cidrs] A list of CIDRs or IP addresses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  GetIpGroupResult({
    required this.cidrs,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': cidrs,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetIpGroupResult.fromMap(Map<String, dynamic> map) {
    return GetIpGroupResult(
      cidrs: (map['cidrs'] as List).cast<String>(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

