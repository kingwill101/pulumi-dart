// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipv4_gateways_get_ipv4_gateways_args_doc}
/// Arguments for getIpv4Gateways.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipv4_gateways_get_ipv4_gateways_args_doc}
class GetIpv4GatewaysArgs {
  /// A list of Ipv4 Gateway IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the IPv4 gateway.
  final pulumi.Input<String>? ipv4GatewayName;
  /// A regex string to filter results by Ipv4 Gateway name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Creating`, `Created`, `Deleting`, `Pending`, `Deleted`.
  final pulumi.Input<String>? status;
  /// The ID of the VPC associated with the IPv4 Gateway.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetIpv4GatewaysArgs].
  /// [ids] A list of Ipv4 Gateway IDs.
  /// [ipv4GatewayName] The name of the IPv4 gateway.
  /// [nameRegex] A regex string to filter results by Ipv4 Gateway name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Creating`, `Created`, `Deleting`, `Pending`, `Deleted`.
  /// [vpcId] The ID of the VPC associated with the IPv4 Gateway.
  GetIpv4GatewaysArgs({
    List<String>? ids,
    String? ipv4GatewayName,
    String? nameRegex,
    String? outputFile,
    String? status,
    String? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipv4GatewayName = pulumi.Input.asOptionalInput<String>(ipv4GatewayName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipv4GatewayName': ?ipv4GatewayName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetIpv4GatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv4GatewaysArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      ipv4GatewayName: map['ipv4GatewayName'] == null ? null : map['ipv4GatewayName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

