// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCustomerSubscription.
class GetCustomerSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The entity tag used for optimistic concurrency when modifying the resource.
  final String? etag;

  /// ID of the resource.
  final String id;

  /// Name of the resource.
  final String name;

  /// Tenant Id.
  final String? tenantId;

  /// Type of Resource.
  final String type;

  /// Creates a new [GetCustomerSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag used for optimistic concurrency when modifying the resource.
  /// [id] ID of the resource.
  /// [name] Name of the resource.
  /// [tenantId] Tenant Id.
  /// [type] Type of Resource.
  GetCustomerSubscriptionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.name,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'name': name,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetCustomerSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
