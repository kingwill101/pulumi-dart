// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ippool_info_response.dart';

/// Describes IPPool
class IPPoolResponse {
  /// End of the IP address pool
  final pulumi.Input<String>? end;
  /// IPPool info
  final pulumi.Input<IPPoolInfoResponse>? info;
  /// Type of the IP Pool [vm, vippool]
  final pulumi.Input<String>? ipPoolType;
  /// Name of the IP-Pool
  final pulumi.Input<String>? name;
  /// Start of the IP address pool
  final pulumi.Input<String>? start;

  /// Creates a new [IPPoolResponse].
  /// [end] End of the IP address pool
  /// [info] IPPool info
  /// [ipPoolType] Type of the IP Pool [vm, vippool]
  /// [name] Name of the IP-Pool
  /// [start] Start of the IP address pool
  IPPoolResponse({
    this.end,
    this.info,
    this.ipPoolType,
    this.name,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'info': ?pulumi.Input.mapOptionalInputValue<IPPoolInfoResponse, Map<String, dynamic>>(info, (value) => value.toMap()),
      'ipPoolType': ?ipPoolType,
      'name': ?name,
      'start': ?start,
    };
  }

  factory IPPoolResponse.fromMap(Map<String, dynamic> map) {
    return IPPoolResponse(
      end: map['end'] == null ? null : (map['end']! as String).input(),
      info: map['info'] == null ? null : (IPPoolInfoResponse.fromMap((map['info']! as Map).cast<String, dynamic>())).input(),
      ipPoolType: map['ipPoolType'] == null ? null : (map['ipPoolType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      start: map['start'] == null ? null : (map['start']! as String).input(),
    );
  }
}

