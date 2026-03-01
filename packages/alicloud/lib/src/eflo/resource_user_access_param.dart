// ignore_for_file: unused_element, unnecessary_cast


class ResourceUserAccessParam {
  /// Access keys are important credentials for authentication.
  final String accessId;
  /// A Secret Key is a Secret credential paired with an access Key to verify a user's identity and protect the security of an interface.
  final String accessKey;
  /// An Endpoint is a network address for accessing a service or API, usually a URL to a specific service instance.
  final String endpoint;
  /// A Workspace generally refers to a separate space created by a user on a particular computing environment or platform.
  final String workspaceId;

  /// Creates a new [ResourceUserAccessParam].
  /// [accessId] Access keys are important credentials for authentication.
  /// [accessKey] A Secret Key is a Secret credential paired with an access Key to verify a user's identity and protect the security of an interface.
  /// [endpoint] An Endpoint is a network address for accessing a service or API, usually a URL to a specific service instance.
  /// [workspaceId] A Workspace generally refers to a separate space created by a user on a particular computing environment or platform.
  ResourceUserAccessParam({
    required this.accessId,
    required this.accessKey,
    required this.endpoint,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': accessId,
      'accessKey': accessKey,
      'endpoint': endpoint,
      'workspaceId': workspaceId,
    };
  }

  factory ResourceUserAccessParam.fromMap(Map<String, dynamic> map) {
    return ResourceUserAccessParam(
      accessId: map['accessId'] as String,
      accessKey: map['accessKey'] as String,
      endpoint: map['endpoint'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

