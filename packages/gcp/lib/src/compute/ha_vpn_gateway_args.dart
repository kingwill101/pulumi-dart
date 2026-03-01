// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ha_vpn_gateway_vpn_interface.dart';

/// {@template pulumi_compute_ha_vpn_gateway_ha_vpn_gateway_args_doc}
/// The set of arguments for HaVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_ha_vpn_gateway_ha_vpn_gateway_args_doc}
class HaVpnGatewayArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// Default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? gatewayIpVersion;

  /// Labels for this resource. These can only be added or modified by the setLabels method.
  /// Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network this VPN gateway is accepting traffic for.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this gateway should sit in.
  final pulumi.Input<String>? region;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// If not specified, IPV4_ONLY will be used.
  /// Default value is `IPV4_ONLY`.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;

  /// A list of interfaces on this VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<HaVpnGatewayVpnInterface>>? vpnInterfaces;

  /// Creates a new [HaVpnGatewayArgs].
  /// [description] An optional description of this resource.
  /// [gatewayIpVersion] The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network this VPN gateway is accepting traffic for.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region this gateway should sit in.
  /// [stackType] The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// [vpnInterfaces] A list of interfaces on this VPN gateway.
  HaVpnGatewayArgs({
    String? description,
    String? gatewayIpVersion,
    Map<String, String>? labels,
    String? name,
    required String network,
    String? project,
    String? region,
    String? stackType,
    List<HaVpnGatewayVpnInterface>? vpnInterfaces,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       gatewayIpVersion = pulumi.Input.asOptionalInput<String>(
         gatewayIpVersion,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asInput<String>(network),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       stackType = pulumi.Input.asOptionalInput<String>(stackType),
       vpnInterfaces =
           pulumi.Input.asOptionalInput<List<HaVpnGatewayVpnInterface>>(
             vpnInterfaces,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayIpVersion': ?gatewayIpVersion,
      'labels': ?labels,
      'name': ?name,
      'network': network,
      'project': ?project,
      'region': ?region,
      'stackType': ?stackType,
      'vpnInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<HaVpnGatewayVpnInterface>,
            List<Map<String, dynamic>>
          >(
            vpnInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  HaVpnGatewayVpnInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HaVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return HaVpnGatewayArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      gatewayIpVersion: map['gatewayIpVersion'] == null
          ? null
          : map['gatewayIpVersion'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      vpnInterfaces: map['vpnInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<HaVpnGatewayVpnInterface>(
              map['vpnInterfaces'],
              (value) => HaVpnGatewayVpnInterface.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
