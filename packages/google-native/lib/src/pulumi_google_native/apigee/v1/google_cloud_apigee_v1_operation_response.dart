// ignore_for_file: unused_element, unnecessary_cast

/// Represents the pairing of REST resource path and the actions (verbs) allowed on the resource path.
class GoogleCloudApigeeV1OperationResponse {
  /// methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.
  final List<String> methods;

  /// REST resource path associated with the API proxy or remote service.
  final String resource;

  GoogleCloudApigeeV1OperationResponse({
    required this.methods,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['methods'] = methods;
    map['resource'] = resource;
    return map;
  }

  factory GoogleCloudApigeeV1OperationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1OperationResponse(
      methods: (map['methods'] as List).cast<String>(),
      resource: map['resource'] as String,
    );
  }
}
