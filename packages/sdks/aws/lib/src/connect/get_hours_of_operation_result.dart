// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hours_of_operation_config.dart';

/// Result data returned by getHoursOfOperation.
class GetHoursOfOperationResult {
  /// ARN of the Hours of Operation.
  final String arn;
  /// Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below.
  final List<GetHoursOfOperationConfig> configs;
  /// Description of the Hours of Operation.
  final String description;
  /// The identifier for the hours of operation.
  final String hoursOfOperationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Identifier of the hosting Amazon Connect Instance.
  final String instanceId;
  /// Name of the Hours of Operation.
  final String name;
  final String region;
  /// Map of tags to assign to the Hours of Operation.
  final Map<String, String> tags;
  /// Time zone of the Hours of Operation.
  final String timeZone;

  /// Creates a new [GetHoursOfOperationResult].
  /// [arn] ARN of the Hours of Operation.
  /// [configs] Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below.
  /// [description] Description of the Hours of Operation.
  /// [hoursOfOperationId] The identifier for the hours of operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Identifier of the hosting Amazon Connect Instance.
  /// [name] Name of the Hours of Operation.
  /// [region] Required.
  /// [tags] Map of tags to assign to the Hours of Operation.
  /// [timeZone] Time zone of the Hours of Operation.
  const GetHoursOfOperationResult({
    required this.arn,
    required this.configs,
    required this.description,
    required this.hoursOfOperationId,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.region,
    required this.tags,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'configs': pulumi.Input.encodeList<GetHoursOfOperationConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'description': description,
      'hoursOfOperationId': hoursOfOperationId,
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'region': region,
      'tags': tags,
      'timeZone': timeZone,
    };
  }

  factory GetHoursOfOperationResult.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationResult(
      arn: map['arn'] as String,
      configs: pulumi.Input.decodeList<GetHoursOfOperationConfig>(map['configs']!, (value) => GetHoursOfOperationConfig.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      hoursOfOperationId: map['hoursOfOperationId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeZone: map['timeZone'] as String,
    );
  }
}
