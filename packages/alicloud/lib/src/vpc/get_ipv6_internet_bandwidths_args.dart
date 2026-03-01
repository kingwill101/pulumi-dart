// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipv6_internet_bandwidths_get_ipv6_internet_bandwidths_args_doc}
/// Arguments for getIpv6InternetBandwidths.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipv6_internet_bandwidths_get_ipv6_internet_bandwidths_args_doc}
class GetIpv6InternetBandwidthsArgs {
  /// A list of Ipv6 Internet Bandwidth IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the IPv6 address.
  final pulumi.Input<String>? ipv6AddressId;
  /// The ID of the Ipv6 Internet Bandwidth.
  final pulumi.Input<String>? ipv6InternetBandwidthId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIpv6InternetBandwidthsArgs].
  /// [ids] A list of Ipv6 Internet Bandwidth IDs.
  /// [ipv6AddressId] The ID of the IPv6 address.
  /// [ipv6InternetBandwidthId] The ID of the Ipv6 Internet Bandwidth.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  GetIpv6InternetBandwidthsArgs({
    List<String>? ids,
    String? ipv6AddressId,
    String? ipv6InternetBandwidthId,
    String? outputFile,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipv6AddressId = pulumi.Input.asOptionalInput<String>(ipv6AddressId),
      ipv6InternetBandwidthId = pulumi.Input.asOptionalInput<String>(ipv6InternetBandwidthId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipv6AddressId': ?ipv6AddressId,
      'ipv6InternetBandwidthId': ?ipv6InternetBandwidthId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpv6InternetBandwidthsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6InternetBandwidthsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      ipv6AddressId: map['ipv6AddressId'] == null ? null : map['ipv6AddressId'] as String,
      ipv6InternetBandwidthId: map['ipv6InternetBandwidthId'] == null ? null : map['ipv6InternetBandwidthId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

