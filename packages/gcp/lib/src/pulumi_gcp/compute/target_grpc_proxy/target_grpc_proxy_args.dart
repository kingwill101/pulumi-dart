// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetGrpcProxy.
class TargetGrpcProxyArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource
  /// is created. The name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long
  /// and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// URL to the UrlMap resource that defines the mapping from URL to
  /// the BackendService. The protocol field in the BackendService
  /// must be set to GRPC.
  final pulumi.Input<String>? urlMap;

  /// If true, indicates that the BackendServices referenced by
  /// the urlMap may be accessed by gRPC applications without using
  /// a sidecar proxy. This will enable configuration checks on urlMap
  /// and its referenced BackendServices to not allow unsupported features.
  /// A gRPC application must use "xds:///" scheme in the target URI
  /// of the service it is connecting to. If false, indicates that the
  /// BackendServices referenced by the urlMap will be accessed by gRPC
  /// applications via a sidecar proxy. In this case, a gRPC application
  /// must not use "xds:///" scheme in the target URI of the service
  /// it is connecting to
  final pulumi.Input<bool>? validateForProxyless;

  TargetGrpcProxyArgs({
    this.description,
    this.name,
    this.project,
    this.urlMap,
    this.validateForProxyless,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final urlMapValue = urlMap;
    if (urlMapValue != null) {
      map['urlMap'] = urlMapValue;
    }
    final validateForProxylessValue = validateForProxyless;
    if (validateForProxylessValue != null) {
      map['validateForProxyless'] = validateForProxylessValue;
    }
    return map;
  }

  factory TargetGrpcProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetGrpcProxyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      urlMap: pulumi.Input.asOptionalInput<String>(map['urlMap']),
      validateForProxyless:
          pulumi.Input.asOptionalInput<bool>(map['validateForProxyless']),
    );
  }
}
