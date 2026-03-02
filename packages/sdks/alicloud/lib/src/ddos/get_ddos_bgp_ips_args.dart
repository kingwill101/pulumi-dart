// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_get_ddos_bgp_ips_get_ddos_bgp_ips_args_doc}
/// Arguments for getDdosBgpIps.
/// {@endtemplate}
/// {@macro pulumi_ddos_get_ddos_bgp_ips_get_ddos_bgp_ips_args_doc}
class GetDdosBgpIpsArgs {
  /// A list of Ip IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the native protection enterprise instance to be operated.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The product name. Valid Value:`ECS`, `SLB`, `EIP`, `WAF`.
  final pulumi.Input<String>? productName;
  /// The current state of the IP address. Valid Value:
  /// - normal: indicates normal (not attacked).
  /// - hole_begin: indicates that you are in a black hole state.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDdosBgpIpsArgs].
  /// [ids] A list of Ip IDs.
  /// [instanceId] The ID of the native protection enterprise instance to be operated.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [productName] The product name. Valid Value:`ECS`, `SLB`, `EIP`, `WAF`.
  /// [status] The current state of the IP address. Valid Value:
  GetDdosBgpIpsArgs({
    this.ids,
    required this.instanceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.productName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'productName': ?productName,
      'status': ?status,
    };
  }

  factory GetDdosBgpIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosBgpIpsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      productName: map['productName'] == null ? null : (map['productName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

