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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? productName,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      productName = pulumi.Input.asOptionalInput<String>(productName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

