// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hours_of_operation_config.dart';

/// Result data returned by getHoursOfOperation.
class GetHoursOfOperationResult {
  /// ARN of the Hours of Operation.
  final String? arn;
  /// Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below.
  final List<GetHoursOfOperationConfig>? configs;
  /// Description of the Hours of Operation.
  final String? description;
  /// The identifier for the hours of operation.
  final String? hoursOfOperationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Identifier of the hosting Amazon Connect Instance.
  final String? instanceId;
  /// Name of the Hours of Operation.
  final String? name;
  final String? region;
  /// Map of tags to assign to the Hours of Operation.
  final Map<String, String>? tags;
  /// Time zone of the Hours of Operation.
  final String? timeZone;

  /// Creates a new [GetHoursOfOperationResult].
  /// [arn] ARN of the Hours of Operation.
  /// [configs] Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below.
  /// [description] Description of the Hours of Operation.
  /// [hoursOfOperationId] The identifier for the hours of operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Identifier of the hosting Amazon Connect Instance.
  /// [name] Name of the Hours of Operation.
  /// [region] Optional.
  /// [tags] Map of tags to assign to the Hours of Operation.
  /// [timeZone] Time zone of the Hours of Operation.
  const GetHoursOfOperationResult({
    this.arn,
    this.configs,
    this.description,
    this.hoursOfOperationId,
    this.id,
    this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHoursOfOperationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'hoursOfOperationId': ?hoursOfOperationId,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeZone': ?timeZone,
    };
  }

  factory GetHoursOfOperationResult.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHoursOfOperationConfig>(guardedValue, (value) => GetHoursOfOperationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hoursOfOperationId: (() { final guardedValue = map['hoursOfOperationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
