// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getControllerDetails.
class GetControllerDetailsResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// dnc application id should be used by customer to authenticate with dnc gateway.
  final String? dncAppId;
  /// dnc endpoint url that customers can use to connect to
  final String? dncEndpoint;
  /// tenant id of dnc application id
  final String? dncTenantId;
  /// An identifier that represents the resource.
  final String? id;
  /// Location of the resource.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// The current state of dnc controller resource.
  final String? provisioningState;
  /// The purpose of the dnc controller resource.
  final String? purpose;
  /// Resource guid.
  final String? resourceGuid;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of resource.
  final String? type;

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
    this.azureApiVersion,
    this.dncAppId,
    this.dncEndpoint,
    this.dncTenantId,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    String? purpose,
    this.resourceGuid,
    this.tags,
    this.type,
  }) : purpose = purpose ?? 'prod';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dncAppId': ?dncAppId,
      'dncEndpoint': ?dncEndpoint,
      'dncTenantId': ?dncTenantId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'purpose': ?purpose,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetControllerDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetControllerDetailsResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dncAppId: (() { final guardedValue = map['dncAppId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dncEndpoint: (() { final guardedValue = map['dncEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dncTenantId: (() { final guardedValue = map['dncTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
