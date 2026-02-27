import 'package:pulumi/pulumi.dart' hide Config;
import 'gateway_args4.dart';

/// Creates a new Gateway in a given project and location.
class Gateway5 extends CustomResource {
  /// Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  late final Output<List<String>> addresses;

  /// Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<List<String>> certificateUrls;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final Output<String> description;

  /// Required. Short name of the Gateway resource to be created.
  late final Output<String> gatewayId;

  /// Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<String> gatewaySecurityPolicy;

  /// Optional. Set of label tags associated with the Gateway resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  late final Output<String> name;

  /// Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final Output<String> network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  late final Output<List<int>> ports;
  late final Output<String> project;

  /// Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  late final Output<String> scope;

  /// Server-defined URL of this resource
  late final Output<String> selfLink;

  /// Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  late final Output<String> serverTlsPolicy;

  /// Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  late final Output<String> subnetwork;

  /// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  late final Output<String> type;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  Gateway5(
    String name, {
    GatewayArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:Gateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<List<String>>('addresses');
    this.certificateUrls = registerOutput<List<String>>('certificateUrls');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewaySecurityPolicy =
        registerOutput<String>('gatewaySecurityPolicy');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.ports = registerOutput<List<int>>('ports');
    this.project = registerOutput<String>('project');
    this.scope = registerOutput<String>('scope');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverTlsPolicy = registerOutput<String>('serverTlsPolicy');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
