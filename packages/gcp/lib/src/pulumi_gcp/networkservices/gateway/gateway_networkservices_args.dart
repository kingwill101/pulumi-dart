// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Gateway.
class GatewayNetworkservicesArgs {
  /// Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic.
  /// When no address is provided, an IP from the subnetwork is allocated.
  /// This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  final pulumi.Input<List<String>>? addresses;

  /// A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
  /// This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<List<String>>? certificateUrls;

  /// When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
  /// If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted.
  final pulumi.Input<bool>? deleteSwgAutogenRouterOnDestroy;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Determines if envoy will insert internal debug headers into upstream requests.
  /// Other Envoy headers may still be injected.
  /// By default, envoy will not insert any debug headers.
  /// Possible values are: `NONE`, `DEBUG_HEADERS`.
  final pulumi.Input<String>? envoyHeaders;

  /// A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
  /// For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
  /// This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? gatewaySecurityPolicy;

  /// The IP Version that will be used by this gateway.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;

  /// Set of label tags associated with the Gateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the gateway.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// Name of the Gateway resource.
  final pulumi.Input<String>? name;

  /// The relative resource name identifying the VPC network that is using this configuration.
  /// For example: 'projects/*/global/networks/network-1'.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic.
  /// The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  final pulumi.Input<List<int>> ports;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The routing mode of the Gateway. This field is configurable only for gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of type SECURE_WEB_GATEWAY.
  /// Possible values are: `NEXT_HOP_ROUTING_MODE`, `EXPLICIT_ROUTING_MODE`.
  final pulumi.Input<String>? routingMode;

  /// Immutable. Scope determines how configuration across multiple Gateway instances are merged.
  /// The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer.
  /// Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  final pulumi.Input<String>? scope;

  /// A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  final pulumi.Input<String>? serverTlsPolicy;

  /// The relative resource name identifying the subnetwork in which this SWG is allocated.
  /// For example: projects/*/regions/us-central1/subnetworks/network-1.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? subnetwork;

  /// Immutable. The type of the customer managed gateway.
  /// Possible values are: `OPEN_MESH`, `SECURE_WEB_GATEWAY`.
  final pulumi.Input<String> type;

  GatewayNetworkservicesArgs({
    this.addresses,
    this.certificateUrls,
    this.deleteSwgAutogenRouterOnDestroy,
    this.description,
    this.envoyHeaders,
    this.gatewaySecurityPolicy,
    this.ipVersion,
    this.labels,
    this.location,
    this.name,
    this.network,
    required this.ports,
    this.project,
    this.routingMode,
    this.scope,
    this.serverTlsPolicy,
    this.subnetwork,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    final certificateUrlsValue = certificateUrls;
    if (certificateUrlsValue != null) {
      map['certificateUrls'] = certificateUrlsValue;
    }
    final deleteSwgAutogenRouterOnDestroyValue =
        deleteSwgAutogenRouterOnDestroy;
    if (deleteSwgAutogenRouterOnDestroyValue != null) {
      map['deleteSwgAutogenRouterOnDestroy'] =
          deleteSwgAutogenRouterOnDestroyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final envoyHeadersValue = envoyHeaders;
    if (envoyHeadersValue != null) {
      map['envoyHeaders'] = envoyHeadersValue;
    }
    final gatewaySecurityPolicyValue = gatewaySecurityPolicy;
    if (gatewaySecurityPolicyValue != null) {
      map['gatewaySecurityPolicy'] = gatewaySecurityPolicyValue;
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] = ipVersionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    map['ports'] = ports;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final serverTlsPolicyValue = serverTlsPolicy;
    if (serverTlsPolicyValue != null) {
      map['serverTlsPolicy'] = serverTlsPolicyValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    map['type'] = type;
    return map;
  }

  factory GatewayNetworkservicesArgs.fromMap(Map<String, dynamic> map) {
    return GatewayNetworkservicesArgs(
      addresses: pulumi.Input.asOptionalInput<List<String>>(map['addresses']),
      certificateUrls:
          pulumi.Input.asOptionalInput<List<String>>(map['certificateUrls']),
      deleteSwgAutogenRouterOnDestroy: pulumi.Input.asOptionalInput<bool>(
          map['deleteSwgAutogenRouterOnDestroy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      envoyHeaders: pulumi.Input.asOptionalInput<String>(map['envoyHeaders']),
      gatewaySecurityPolicy:
          pulumi.Input.asOptionalInput<String>(map['gatewaySecurityPolicy']),
      ipVersion: pulumi.Input.asOptionalInput<String>(map['ipVersion']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      ports: pulumi.Input.asInput<List<int>>(map['ports']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      routingMode: pulumi.Input.asOptionalInput<String>(map['routingMode']),
      scope: pulumi.Input.asOptionalInput<String>(map['scope']),
      serverTlsPolicy:
          pulumi.Input.asOptionalInput<String>(map['serverTlsPolicy']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
