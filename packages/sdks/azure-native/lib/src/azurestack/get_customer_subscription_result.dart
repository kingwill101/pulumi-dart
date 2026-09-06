// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomerSubscription.
class GetCustomerSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The entity tag used for optimistic concurrency when modifying the resource.
  final String? etag;
  /// ID of the resource.
  final String? id;
  /// Name of the resource.
  final String? name;
  /// Tenant Id.
  final String? tenantId;
  /// Type of Resource.
  final String? type;

  /// Creates a new [GetCustomerSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag used for optimistic concurrency when modifying the resource.
  /// [id] ID of the resource.
  /// [name] Name of the resource.
  /// [tenantId] Tenant Id.
  /// [type] Type of Resource.
  const GetCustomerSubscriptionResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetCustomerSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
