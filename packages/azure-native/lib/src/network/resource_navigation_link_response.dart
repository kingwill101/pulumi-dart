// ignore_for_file: unused_element, unnecessary_cast


/// ResourceNavigationLink resource.
class ResourceNavigationLinkResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Link to the external resource.
  final String? link;
  /// Resource type of the linked resource.
  final String? linkedResourceType;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the resource navigation link resource.
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [ResourceNavigationLinkResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [link] Link to the external resource.
  /// [linkedResourceType] Resource type of the linked resource.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the resource navigation link resource.
  /// [type] Resource type.
  ResourceNavigationLinkResponse({
    required this.etag,
    required this.id,
    this.link,
    this.linkedResourceType,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'link': ?link,
      'linkedResourceType': ?linkedResourceType,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ResourceNavigationLinkResponse.fromMap(Map<String, dynamic> map) {
    return ResourceNavigationLinkResponse(
      etag: map['etag'] as String,
      id: map['id'] as String,
      link: map['link'] == null ? null : map['link'] as String,
      linkedResourceType: map['linkedResourceType'] == null ? null : map['linkedResourceType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

