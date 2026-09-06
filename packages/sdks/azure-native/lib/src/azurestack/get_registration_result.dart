// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistration.
class GetRegistrationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the billing mode for the Azure Stack registration.
  final String? billingModel;
  /// The identifier of the registered Azure Stack.
  final String? cloudId;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  final String? etag;
  /// ID of the resource.
  final String? id;
  /// Location of the resource.
  final String? location;
  /// Name of the resource.
  final String? name;
  /// The object identifier associated with the Azure Stack connecting to Azure.
  final String? objectId;
  /// Custom tags for the resource.
  final Map<String, String>? tags;
  /// Type of Resource.
  final String? type;

  /// Creates a new [GetRegistrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingModel] Specifies the billing mode for the Azure Stack registration.
  /// [cloudId] The identifier of the registered Azure Stack.
  /// [etag] The entity tag used for optimistic concurrency when modifying the resource.
  /// [id] ID of the resource.
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [objectId] The object identifier associated with the Azure Stack connecting to Azure.
  /// [tags] Custom tags for the resource.
  /// [type] Type of Resource.
  const GetRegistrationResult({
    this.azureApiVersion,
    this.billingModel,
    this.cloudId,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.objectId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'billingModel': ?billingModel,
      'cloudId': ?cloudId,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'objectId': ?objectId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingModel: (() { final guardedValue = map['billingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudId: (() { final guardedValue = map['cloudId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
