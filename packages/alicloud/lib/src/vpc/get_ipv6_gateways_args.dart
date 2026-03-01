// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipv6_gateways_get_ipv6_gateways_args_doc}
/// Arguments for getIpv6Gateways.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipv6_gateways_get_ipv6_gateways_args_doc}
class GetIpv6GatewaysArgs {
  /// A list of Ipv6 Gateway IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the IPv6 gateway.
  final pulumi.Input<String>? ipv6GatewayName;
  /// A regex string to filter results by Ipv6 Gateway name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Available`, `Deleting`, `Pending`.
  final pulumi.Input<String>? status;
  /// The ID of the virtual private cloud (VPC) to which the IPv6 gateway belongs.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetIpv6GatewaysArgs].
  /// [ids] A list of Ipv6 Gateway IDs.
  /// [ipv6GatewayName] The name of the IPv6 gateway.
  /// [nameRegex] A regex string to filter results by Ipv6 Gateway name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Available`, `Deleting`, `Pending`.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the IPv6 gateway belongs.
  GetIpv6GatewaysArgs({
    List<String>? ids,
    String? ipv6GatewayName,
    String? nameRegex,
    String? outputFile,
    String? status,
    String? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipv6GatewayName = pulumi.Input.asOptionalInput<String>(ipv6GatewayName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipv6GatewayName': ?ipv6GatewayName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetIpv6GatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6GatewaysArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      ipv6GatewayName: map['ipv6GatewayName'] == null ? null : map['ipv6GatewayName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

