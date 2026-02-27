// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTargetGrpcProxy.
class GetTargetGrpcProxyComputeBetaResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetGrpcProxy. An up-to-date fingerprint must be provided in order to patch/update the TargetGrpcProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetGrpcProxy.
  final String fingerprint;

  /// Type of the resource. Always compute#targetGrpcProxy for target grpc proxies.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL with id for the resource.
  final String selfLinkWithId;

  /// URL to the UrlMap resource that defines the mapping from URL to the BackendService. The protocol field in the BackendService must be set to GRPC.
  final String urlMap;

  /// If true, indicates that the BackendServices referenced by the urlMap may be accessed by gRPC applications without using a sidecar proxy. This will enable configuration checks on urlMap and its referenced BackendServices to not allow unsupported features. A gRPC application must use "xds:///" scheme in the target URI of the service it is connecting to. If false, indicates that the BackendServices referenced by the urlMap will be accessed by gRPC applications via a sidecar proxy. In this case, a gRPC application must not use "xds:///" scheme in the target URI of the service it is connecting to
  final bool validateForProxyless;

  GetTargetGrpcProxyComputeBetaResult({
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.urlMap,
    required this.validateForProxyless,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['kind'] = kind;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['urlMap'] = urlMap;
    map['validateForProxyless'] = validateForProxyless;
    return map;
  }

  factory GetTargetGrpcProxyComputeBetaResult.fromMap(
      Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeBetaResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      urlMap: map['urlMap'] as String,
      validateForProxyless: map['validateForProxyless'] as bool,
    );
  }
}
