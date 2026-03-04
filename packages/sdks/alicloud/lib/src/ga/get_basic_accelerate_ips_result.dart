// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_basic_accelerate_ips_ip.dart';

/// Result data returned by getBasicAccelerateIps.
class GetBasicAccelerateIpsResult {
  /// The address of the Basic Accelerate IP.
  final String? accelerateIpAddress;

  /// The id of the Basic Accelerate IP.
  final String? accelerateIpId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// The ID of the Basic Ip Set.
  final String ipSetId;

  /// A list of Global Accelerator Basic Accelerate IPs. Each element contains the following attributes:
  final List<GetBasicAccelerateIpsIp> ips;
  final String? outputFile;

  /// The status of the Basic Accelerate IP instance.
  final String? status;

  /// Creates a new [GetBasicAccelerateIpsResult].
  /// [accelerateIpAddress] The address of the Basic Accelerate IP.
  /// [accelerateIpId] The id of the Basic Accelerate IP.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipSetId] The ID of the Basic Ip Set.
  /// [ips] A list of Global Accelerator Basic Accelerate IPs. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [status] The status of the Basic Accelerate IP instance.
  GetBasicAccelerateIpsResult({
    this.accelerateIpAddress,
    this.accelerateIpId,
    required this.id,
    required this.ids,
    required this.ipSetId,
    required this.ips,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpAddress': ?accelerateIpAddress,
      'accelerateIpId': ?accelerateIpId,
      'id': id,
      'ids': ids,
      'ipSetId': ipSetId,
      'ips':
          pulumi.Input.encodeList<
            GetBasicAccelerateIpsIp,
            Map<String, dynamic>
          >(ips, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBasicAccelerateIpsResult.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpsResult(
      accelerateIpAddress: (() {
        final guardedValue = map['accelerateIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      accelerateIpId: (() {
        final guardedValue = map['accelerateIpId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipSetId: map['ipSetId'] as String,
      ips: pulumi.Input.decodeList<GetBasicAccelerateIpsIp>(
        map['ips']!,
        (value) => GetBasicAccelerateIpsIp.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
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
