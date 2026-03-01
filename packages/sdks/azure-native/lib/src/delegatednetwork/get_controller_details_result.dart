// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getControllerDetails.
class GetControllerDetailsResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// dnc application id should be used by customer to authenticate with dnc gateway.
  final String dncAppId;
  /// dnc endpoint url that customers can use to connect to
  final String dncEndpoint;
  /// tenant id of dnc application id
  final String dncTenantId;
  /// An identifier that represents the resource.
  final String id;
  /// Location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The current state of dnc controller resource.
  final String provisioningState;
  /// The purpose of the dnc controller resource.
  final String? purpose;
  /// Resource guid.
  final String resourceGuid;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of resource.
  final String type;

  /// Creates a new [GetControllerDetailsResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dncAppId] dnc application id should be used by customer to authenticate with dnc gateway.
  /// [dncEndpoint] dnc endpoint url that customers can use to connect to
  /// [dncTenantId] tenant id of dnc application id
  /// [id] An identifier that represents the resource.
  /// [location] Location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The current state of dnc controller resource.
  /// [purpose] The purpose of the dnc controller resource.
  /// [resourceGuid] Resource guid.
  /// [tags] The resource tags.
  /// [type] The type of resource.
  GetControllerDetailsResult({
    required this.azureApiVersion,
    required this.dncAppId,
    required this.dncEndpoint,
    required this.dncTenantId,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.purpose,
    required this.resourceGuid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dncAppId': dncAppId,
      'dncEndpoint': dncEndpoint,
      'dncTenantId': dncTenantId,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'purpose': ?purpose,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetControllerDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetControllerDetailsResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dncAppId: map['dncAppId'] as String,
      dncEndpoint: map['dncEndpoint'] as String,
      dncTenantId: map['dncTenantId'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      purpose: map['purpose'] == null ? null : map['purpose'] as String,
      resourceGuid: map['resourceGuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

