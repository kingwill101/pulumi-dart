// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_bgp_ips_ip.dart';

/// Result data returned by getDdosBgpIps.
class GetDdosBgpIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final List<GetDdosBgpIpsIp> ips;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? productName;
  final String? status;

  /// Creates a new [GetDdosBgpIpsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [ips] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [productName] Optional.
  /// [status] Optional.
  GetDdosBgpIpsResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    required this.ips,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.productName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'ips': pulumi.Input.encodeList<GetDdosBgpIpsIp, Map<String, dynamic>>(ips, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'productName': ?productName,
      'status': ?status,
    };
  }

  factory GetDdosBgpIpsResult.fromMap(Map<String, dynamic> map) {
    return GetDdosBgpIpsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      ips: pulumi.Input.decodeList<GetDdosBgpIpsIp>(map['ips']!, (value) => GetDdosBgpIpsIp.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

