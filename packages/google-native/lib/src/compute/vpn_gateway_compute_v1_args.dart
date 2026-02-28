// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_stack_type_compute_v1.dart';
import 'vpn_gateway_vpn_gateway_interface_compute_v1.dart';

/// {@template pulumi_compute_v1_vpn_gateway_compute_v1_args_doc}
/// The set of arguments for VpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_vpn_gateway_compute_v1_args_doc}
class VpnGatewayComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  final pulumi.Input<VpnGatewayStackTypeComputeV1>? stackType;

  /// The list of VPN interfaces associated with this VPN gateway.
  final pulumi.Input<List<VpnGatewayVpnGatewayInterfaceComputeV1>>?
      vpnInterfaces;

  /// Creates a new [VpnGatewayComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [stackType] The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  /// [vpnInterfaces] The list of VPN interfaces associated with this VPN gateway.
  VpnGatewayComputeV1Args({
    String? description,
    Map<String, String>? labels,
    String? name,
    String? network,
    String? project,
    required String region,
    String? requestId,
    VpnGatewayStackTypeComputeV1? stackType,
    List<VpnGatewayVpnGatewayInterfaceComputeV1>? vpnInterfaces,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asOptionalInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        stackType = pulumi.Input.asOptionalInput<VpnGatewayStackTypeComputeV1>(
            stackType),
        vpnInterfaces = pulumi.Input.asOptionalInput<
            List<VpnGatewayVpnGatewayInterfaceComputeV1>>(vpnInterfaces);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = pulumi.Input.mapOptionalInputValue<
          VpnGatewayStackTypeComputeV1,
          String>(stackTypeValue, (value) => value.value);
    }
    final vpnInterfacesValue = vpnInterfaces;
    if (vpnInterfacesValue != null) {
      map['vpnInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<VpnGatewayVpnGatewayInterfaceComputeV1>,
              List<Map<String, dynamic>>>(
          vpnInterfacesValue,
          (value) => pulumi.Input.encodeList<
              VpnGatewayVpnGatewayInterfaceComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory VpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return VpnGatewayComputeV1Args(
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      stackType: map['stackType'] == null
          ? null
          : VpnGatewayStackTypeComputeV1.fromValue(map['stackType'] as String),
      vpnInterfaces: map['vpnInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<VpnGatewayVpnGatewayInterfaceComputeV1>(
              map['vpnInterfaces'],
              (value) => VpnGatewayVpnGatewayInterfaceComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
