// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_type_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_gateway_networkservices_v1beta1_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_gateway_networkservices_v1beta1_args_doc}
class GatewayNetworkservicesV1beta1Args {
  /// Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  final pulumi.Input<List<String>>? addresses;

  /// Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<List<String>>? certificateUrls;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Required. Short name of the Gateway resource to be created.
  final pulumi.Input<String> gatewayId;

  /// Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? gatewaySecurityPolicy;

  /// Optional. Set of label tags associated with the Gateway resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  final pulumi.Input<String>? name;

  /// Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  final pulumi.Input<List<int>> ports;
  final pulumi.Input<String>? project;

  /// Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  final pulumi.Input<String>? scope;

  /// Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  final pulumi.Input<String>? serverTlsPolicy;

  /// Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  final pulumi.Input<String>? subnetwork;

  /// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  final pulumi.Input<GatewayTypeNetworkservicesV1beta1>? type;

  /// Creates a new [GatewayNetworkservicesV1beta1Args].
  /// [addresses] Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no address is provided, an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  /// [certificateUrls] Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection. This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gatewayId] Required. Short name of the Gateway resource to be created.
  /// [gatewaySecurityPolicy] Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections. For example: `projects/*/locations/*/gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [labels] Optional. Set of label tags associated with the Gateway resource.
  /// [location] Optional.
  /// [name] Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.
  /// [network] Optional. The relative resource name identifying the VPC network that is using this configuration. For example: `projects/*/global/networks/network-1`. Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  /// [ports] One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  /// [project] Optional.
  /// [scope] Optional. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  /// [serverTlsPolicy] Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  /// [subnetwork] Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. For example: `projects/*/regions/us-central1/subnetworks/network-1` Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY".
  /// [type] Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
  GatewayNetworkservicesV1beta1Args({
    List<String>? addresses,
    List<String>? certificateUrls,
    String? description,
    required String gatewayId,
    String? gatewaySecurityPolicy,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? network,
    required List<int> ports,
    String? project,
    String? scope,
    String? serverTlsPolicy,
    String? subnetwork,
    GatewayTypeNetworkservicesV1beta1? type,
  }) : addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
       certificateUrls = pulumi.Input.asOptionalInput<List<String>>(
         certificateUrls,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       gatewayId = pulumi.Input.asInput<String>(gatewayId),
       gatewaySecurityPolicy = pulumi.Input.asOptionalInput<String>(
         gatewaySecurityPolicy,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       ports = pulumi.Input.asInput<List<int>>(ports),
       project = pulumi.Input.asOptionalInput<String>(project),
       scope = pulumi.Input.asOptionalInput<String>(scope),
       serverTlsPolicy = pulumi.Input.asOptionalInput<String>(serverTlsPolicy),
       subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
       type = pulumi.Input.asOptionalInput<GatewayTypeNetworkservicesV1beta1>(
         type,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'certificateUrls': ?certificateUrls,
      'description': ?description,
      'gatewayId': gatewayId,
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'ports': ports,
      'project': ?project,
      'scope': ?scope,
      'serverTlsPolicy': ?serverTlsPolicy,
      'subnetwork': ?subnetwork,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayTypeNetworkservicesV1beta1,
            String
          >(type, (value) => value.value),
    };
  }

  factory GatewayNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GatewayNetworkservicesV1beta1Args(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      certificateUrls: map['certificateUrls'] == null
          ? null
          : (map['certificateUrls'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      gatewayId: map['gatewayId'] as String,
      gatewaySecurityPolicy: map['gatewaySecurityPolicy'] == null
          ? null
          : map['gatewaySecurityPolicy'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      ports: (map['ports'] as List).cast<int>(),
      project: map['project'] == null ? null : map['project'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] == null
          ? null
          : map['serverTlsPolicy'] as String,
      subnetwork: map['subnetwork'] == null
          ? null
          : map['subnetwork'] as String,
      type: map['type'] == null
          ? null
          : GatewayTypeNetworkservicesV1beta1.fromValue(map['type'] as String),
    );
  }
}
