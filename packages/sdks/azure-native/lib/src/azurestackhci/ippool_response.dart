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
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      info: (() { final guardedValue = map['info']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPPoolInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipPoolType: (() { final guardedValue = map['ipPoolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

