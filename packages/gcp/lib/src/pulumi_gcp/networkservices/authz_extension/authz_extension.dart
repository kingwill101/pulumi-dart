import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_extension_args.dart';

/// AuthzExtension is a resource that allows traffic forwarding to a callout backend service to make an authorization decision.
///
///
/// To get more information about AuthzExtension, see:
///
/// * [API documentation](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.authzExtensions)
///
/// ## Example Usage
///
/// ### Network Services Authz Extension Basic
///
///
///
/// ### Network Services Authz Extension Basic With Auth Grpc
///
///
///
///
/// ## Import
///
/// AuthzExtension can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authzExtensions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthzExtension can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default projects/{{project}}/locations/{{location}}/authzExtensions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/authzExtension:AuthzExtension default {{name}}
/// ```
class AuthzExtension extends pulumi.CustomResource {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  late final pulumi.Output<String> authority;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to FALSE or the default setting of FALSE is used, one of the following happens:
  /// * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer.
  /// * If response headers have been delivered, then the HTTP stream to the downstream client is reset.
  late final pulumi.Output<bool> failOpen;

  /// List of the HTTP headers to forward to the extension (from the client). If omitted, all headers are sent. Each element is a string indicating the header name.
  late final pulumi.Output<List<String>?> forwardHeaders;

  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final pulumi.Output<String> loadBalancingScheme;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The metadata provided here is included as part of the metadata_context (of type google.protobuf.Struct) in the ProcessingRequest message sent to the extension server. The metadata is available under the namespace com.google.authz_extension.<resourceName>. The following variables are supported in the metadata Struct:
  /// {forwarding_rule_id} - substituted with the forwarding rule's fully qualified resource name.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// Identifier. Name of the AuthzExtension resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The reference to the service that runs the extension.
  /// To configure a callout extension, service must be a fully-qualified reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices) in the format:
  /// https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService} or https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}.
  late final pulumi.Output<String> service;

  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-10000 milliseconds.
  late final pulumi.Output<String> timeout;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

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
  late final pulumi.Output<String> wireFormat;

  AuthzExtension(
    String name, {
    AuthzExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/authzExtension:AuthzExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authority = registerOutput<String>('authority');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.failOpen = registerOutput<bool>('failOpen');
    this.forwardHeaders = registerOutput<List<String>?>('forwardHeaders');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.service = registerOutput<String>('service');
    this.timeout = registerOutput<String>('timeout');
    this.updateTime = registerOutput<String>('updateTime');
    this.wireFormat = registerOutput<String>('wireFormat');
  }
}
