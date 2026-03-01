// ignore_for_file: unused_element, unnecessary_cast

import 'ippool_info_response.dart';

/// Describes IPPool
class IPPoolResponse {
  /// End of the IP address pool
  final String? end;
  /// IPPool info
  final IPPoolInfoResponse? info;
  /// Type of the IP Pool [vm, vippool]
  final String? ipPoolType;
  /// Name of the IP-Pool
  final String? name;
  /// Start of the IP address pool
  final String? start;

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
      'info': ?info == null ? null : info!.toMap(),
      'ipPoolType': ?ipPoolType,
      'name': ?name,
      'start': ?start,
    };
  }

  factory IPPoolResponse.fromMap(Map<String, dynamic> map) {
    return IPPoolResponse(
      end: map['end'] == null ? null : map['end'] as String,
      info: map['info'] == null ? null : IPPoolInfoResponse.fromMap((map['info'] as Map).cast<String, dynamic>()),
      ipPoolType: map['ipPoolType'] == null ? null : map['ipPoolType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

