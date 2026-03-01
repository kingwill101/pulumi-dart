// ignore_for_file: unused_element, unnecessary_cast


/// ServiceAssociationLink resource.
class ServiceAssociationLinkResponse {
  /// If true, the resource can be deleted.
  final bool? allowDelete;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Link to the external resource.
  final String? link;
  /// Resource type of the linked resource.
  final String? linkedResourceType;
  /// A list of locations.
  final List<String>? locations;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the service association link resource.
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [ServiceAssociationLinkResponse].
  /// [allowDelete] If true, the resource can be deleted.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [link] Link to the external resource.
  /// [linkedResourceType] Resource type of the linked resource.
  /// [locations] A list of locations.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service association link resource.
  /// [type] Resource type.
  ServiceAssociationLinkResponse({
    this.allowDelete,
    required this.etag,
    this.id,
    this.link,
    this.linkedResourceType,
    this.locations,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDelete': ?allowDelete,
      'etag': etag,
      'id': ?id,
      'link': ?link,
      'linkedResourceType': ?linkedResourceType,
      'locations': ?locations,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ServiceAssociationLinkResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAssociationLinkResponse(
      allowDelete: map['allowDelete'] == null ? null : map['allowDelete'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      link: map['link'] == null ? null : map['link'] as String,
      linkedResourceType: map['linkedResourceType'] == null ? null : map['linkedResourceType'] as String,
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

