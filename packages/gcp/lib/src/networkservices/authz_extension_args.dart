// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_authz_extension_authz_extension_args_doc}
/// The set of arguments for AuthzExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_authz_extension_authz_extension_args_doc}
class AuthzExtensionArgs {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  final pulumi.Input<String> authority;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to FALSE or the default setting of FALSE is used, one of the following happens:
  /// * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer.
  /// * If response headers have been delivered, then the HTTP stream to the downstream client is reset.
  final pulumi.Input<bool>? failOpen;
  /// List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  final pulumi.Input<List<String>>? forwardHeaders;
  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String> loadBalancingScheme;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The metadata provided here is included as part of the metadata_context (of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.<resourceName>. The following variables are supported in the metadata Struct:
  /// {forwarding_rule_id} - substituted with the forwarding rule's fully qualified resource name.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Identifier. Name of the AuthzExtension resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reference to the service that runs the extension.
  /// To configure a callout extension, service must be a fully-qualified reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices) in the format:
  /// https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService} or https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}.
  final pulumi.Input<String> service;
  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  final pulumi.Input<String> timeout;
  /// Specifies the communication protocol used by the callout extension
  /// to communicate with its backend service.
  /// Supported values:
  /// - WIRE_FORMAT_UNSPECIFIED:
  /// No wire format is explicitly specified. The backend automatically
  /// defaults this value to EXT_PROC_GRPC.
  /// - EXT_PROC_GRPC:
  /// Uses Envoy's External Processing (ext_proc) gRPC API over a single
  /// gRPC stream. The backend service must support HTTP/2 or H2C.
  /// All supported events for a client request are sent over the same
  /// gRPC stream. This is the default wire format.
  /// - EXT_AUTHZ_GRPC:
  /// Uses Envoy's external authorization (ext_authz) gRPC API.
  /// The backend service must support HTTP/2 or H2C.
  /// This option is only supported for regional AuthzExtension resources.
  /// Possible values are: `WIRE_FORMAT_UNSPECIFIED`, `EXT_PROC_GRPC`, `EXT_AUTHZ_GRPC`.
  final pulumi.Input<String>? wireFormat;

  /// Creates a new [AuthzExtensionArgs].
  /// [authority] The :authority header in the gRPC request sent from Envoy to the extension service.
  /// [description] A human-readable description of the resource.
  /// [failOpen] Determines how the proxy behaves if the call to the extension fails or times out.
  /// [forwardHeaders] List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  /// [labels] Set of labels associated with the AuthzExtension resource.
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// [location] The location of the resource.
  /// [metadata] The metadata provided here is included as part of the metadata_context (of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.<resourceName>. The following variables are supported in the metadata Struct:
  /// [name] Identifier. Name of the AuthzExtension resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The reference to the service that runs the extension.
  /// [timeout] Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  /// [wireFormat] Specifies the communication protocol used by the callout extension
  AuthzExtensionArgs({
    required String authority,
    String? description,
    bool? failOpen,
    List<String>? forwardHeaders,
    Map<String, String>? labels,
    required String loadBalancingScheme,
    required String location,
    Map<String, String>? metadata,
    String? name,
    String? project,
    required String service,
    required String timeout,
    String? wireFormat,
  }) :
      authority = pulumi.Input.asInput<String>(authority),
      description = pulumi.Input.asOptionalInput<String>(description),
      failOpen = pulumi.Input.asOptionalInput<bool>(failOpen),
      forwardHeaders = pulumi.Input.asOptionalInput<List<String>>(forwardHeaders),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancingScheme = pulumi.Input.asInput<String>(loadBalancingScheme),
      location = pulumi.Input.asInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service),
      timeout = pulumi.Input.asInput<String>(timeout),
      wireFormat = pulumi.Input.asOptionalInput<String>(wireFormat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': authority,
      'description': ?description,
      'failOpen': ?failOpen,
      'forwardHeaders': ?forwardHeaders,
      'labels': ?labels,
      'loadBalancingScheme': loadBalancingScheme,
      'location': location,
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'service': service,
      'timeout': timeout,
      'wireFormat': ?wireFormat,
    };
  }

  factory AuthzExtensionArgs.fromMap(Map<String, dynamic> map) {
    return AuthzExtensionArgs(
      authority: map['authority'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      failOpen: map['failOpen'] == null ? null : map['failOpen'] as bool,
      forwardHeaders: map['forwardHeaders'] == null ? null : (map['forwardHeaders'] as List).cast<String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      location: map['location'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
      timeout: map['timeout'] as String,
      wireFormat: map['wireFormat'] == null ? null : map['wireFormat'] as String,
    );
  }
}

