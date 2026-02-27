// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'gateway_type2.dart';

/// The set of arguments for Gateway.
class GatewayArgs3 {
  /// Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  final Input<List<String>>? addresses;

  /// Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  final Input<List<String>>? certificateUrls;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Required. Short name of the Gateway resource to be created.
  final Input<String> gatewayId;

  /// Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final Input<String>? gatewaySecurityPolicy;

  /// Optional. Set of label tags associated with the Gateway resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  final Input<String>? name;

  /// Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final Input<String>? network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  final Input<List<int>> ports;
  final Input<String>? project;

  /// Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  final Input<String>? scope;

  /// Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  final Input<String>? serverTlsPolicy;

  /// Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  final Input<String>? subnetwork;

  /// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  final Input<GatewayType2>? type;

  GatewayArgs3({
    this.addresses,
    this.certificateUrls,
    this.description,
    required this.gatewayId,
    this.gatewaySecurityPolicy,
    this.labels,
    this.location,
    this.name,
    this.network,
    required this.ports,
    this.project,
    this.scope,
    this.serverTlsPolicy,
    this.subnetwork,
    this.type,
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
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['gatewayId'] = gatewayId;
    final gatewaySecurityPolicyValue = gatewaySecurityPolicy;
    if (gatewaySecurityPolicyValue != null) {
      map['gatewaySecurityPolicy'] = gatewaySecurityPolicyValue;
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<GatewayType2, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory GatewayArgs3.fromMap(Map<String, dynamic> map) {
    return GatewayArgs3(
      addresses: Input.asOptionalInput<List<String>>(map['addresses']),
      certificateUrls:
          Input.asOptionalInput<List<String>>(map['certificateUrls']),
      description: Input.asOptionalInput<String>(map['description']),
      gatewayId: Input.asInput<String>(map['gatewayId']),
      gatewaySecurityPolicy:
          Input.asOptionalInput<String>(map['gatewaySecurityPolicy']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      ports: Input.asInput<List<int>>(map['ports']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asOptionalInput<String>(map['scope']),
      serverTlsPolicy: Input.asOptionalInput<String>(map['serverTlsPolicy']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      type: Input.asOptionalInput<GatewayType2>(map['type']),
    );
  }
}
