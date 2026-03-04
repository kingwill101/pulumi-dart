// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_internet_bandwidths_bandwidth.dart';

/// Result data returned by getIpv6InternetBandwidths.
class GetIpv6InternetBandwidthsResult {
  final List<GetIpv6InternetBandwidthsBandwidth> bandwidths;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? ipv6AddressId;
  final String? ipv6InternetBandwidthId;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetIpv6InternetBandwidthsResult].
  /// [bandwidths] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipv6AddressId] Optional.
  /// [ipv6InternetBandwidthId] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetIpv6InternetBandwidthsResult({
    required this.bandwidths,
    required this.id,
    required this.ids,
    this.ipv6AddressId,
    this.ipv6InternetBandwidthId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidths':
          pulumi.Input.encodeList<
            GetIpv6InternetBandwidthsBandwidth,
            Map<String, dynamic>
          >(bandwidths, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'ipv6AddressId': ?ipv6AddressId,
      'ipv6InternetBandwidthId': ?ipv6InternetBandwidthId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpv6InternetBandwidthsResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6InternetBandwidthsResult(
      bandwidths: pulumi.Input.decodeList<GetIpv6InternetBandwidthsBandwidth>(
        map['bandwidths']!,
        (value) => GetIpv6InternetBandwidthsBandwidth.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipv6AddressId: (() {
        final guardedValue = map['ipv6AddressId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipv6InternetBandwidthId: (() {
        final guardedValue = map['ipv6InternetBandwidthId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
