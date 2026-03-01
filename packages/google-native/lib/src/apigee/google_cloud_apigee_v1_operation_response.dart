// ignore_for_file: unused_element, unnecessary_cast

/// Represents the pairing of REST resource path and the actions (verbs) allowed on the resource path.
class GoogleCloudApigeeV1OperationResponse {
  /// methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.
  final List<String> methods;

  /// REST resource path associated with the API proxy or remote service.
  final String resource;

  /// Creates a new [GoogleCloudApigeeV1OperationResponse].
  /// [methods] methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.
  /// [resource] REST resource path associated with the API proxy or remote service.
  GoogleCloudApigeeV1OperationResponse({
    required this.methods,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'methods': methods, 'resource': resource};
  }

  factory GoogleCloudApigeeV1OperationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1OperationResponse(
      methods: (map['methods'] as List).cast<String>(),
      resource: map['resource'] as String,
    );
  }
}
