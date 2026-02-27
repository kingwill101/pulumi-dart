import 'package:pulumi/pulumi.dart';
import 'gateway_args2.dart';

/// Gateway represents the configuration for a proxy, typically a load balancer.
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway.
///
///
/// To get more information about Gateway, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1/projects.locations.gateways)
///
/// ## Example Usage
///
/// ### Network Services Gateway Basic
///
///
///
/// ### Network Services Gateway Advanced
///
///
///
/// ### Network Services Gateway Secure Web Proxy
///
///
///
/// ### Network Services Gateway Multiple Swp Same Network
///
///
///
///
/// ## Import
///
/// Gateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gateways/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Gateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default projects/{{project}}/locations/{{location}}/gateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default {{location}}/{{name}}
/// ```
class Gateway2 extends CustomResource {
  /// Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic.
  /// When no address is provided, an IP from the subnetwork is allocated.
  /// This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  late final Output<List<String>> addresses;

  /// A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
  /// This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<List<String>?> certificateUrls;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
  /// If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted.
  late final Output<bool?> deleteSwgAutogenRouterOnDestroy;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Determines if envoy will insert internal debug headers into upstream requests.
  /// Other Envoy headers may still be injected.
  /// By default, envoy will not insert any debug headers.
  /// Possible values are: `NONE`, `DEBUG_HEADERS`.
  late final Output<String?> envoyHeaders;

  /// A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
  /// For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
  /// This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<String?> gatewaySecurityPolicy;

  /// The IP Version that will be used by this gateway.
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String?> ipVersion;

  /// Set of label tags associated with the Gateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the gateway.
  /// The default value is `global`.
  late final Output<String?> location;

  /// Name of the Gateway resource.
  late final Output<String> name;

  /// The relative resource name identifying the VPC network that is using this configuration.
  /// For example: 'projects/*/global/networks/network-1'.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<String?> network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic.
  /// The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  late final Output<List<int>> ports;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The routing mode of the Gateway. This field is configurable only for gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of type SECURE_WEB_GATEWAY.
  /// Possible values are: `NEXT_HOP_ROUTING_MODE`, `EXPLICIT_ROUTING_MODE`.
  late final Output<String?> routingMode;

  /// Immutable. Scope determines how configuration across multiple Gateway instances are merged.
  /// The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer.
  /// Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  late final Output<String?> scope;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  late final Output<String?> serverTlsPolicy;

  /// The relative resource name identifying the subnetwork in which this SWG is allocated.
  /// For example: projects/*/regions/us-central1/subnetworks/network-1.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<String?> subnetwork;

  /// Immutable. The type of the customer managed gateway.
  /// Possible values are: `OPEN_MESH`, `SECURE_WEB_GATEWAY`.
  late final Output<String> type;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  Gateway2(
    String name, {
    GatewayArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/gateway:Gateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<List<String>>('addresses');
    this.certificateUrls = registerOutput<List<String>?>('certificateUrls');
    this.createTime = registerOutput<String>('createTime');
    this.deleteSwgAutogenRouterOnDestroy =
        registerOutput<bool?>('deleteSwgAutogenRouterOnDestroy');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.envoyHeaders = registerOutput<String?>('envoyHeaders');
    this.gatewaySecurityPolicy =
        registerOutput<String?>('gatewaySecurityPolicy');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.ports = registerOutput<List<int>>('ports');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.routingMode = registerOutput<String?>('routingMode');
    this.scope = registerOutput<String?>('scope');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
