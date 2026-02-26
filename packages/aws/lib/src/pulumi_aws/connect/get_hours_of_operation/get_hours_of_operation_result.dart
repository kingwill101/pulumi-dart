// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_hours_of_operation_config/get_hours_of_operation_config.dart';

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

  GetHoursOfOperationResult({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['configs'] =
        Input.encodeList<GetHoursOfOperationConfig, Map<String, dynamic>>(
            configs, (value) => value.toMap());
    map['description'] = description;
    map['hoursOfOperationId'] = hoursOfOperationId;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    map['timeZone'] = timeZone;
    return map;
  }

  factory GetHoursOfOperationResult.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationResult(
      arn: map['arn'] as String,
      configs: Input.decodeList<GetHoursOfOperationConfig>(
          map['configs'],
          (value) => GetHoursOfOperationConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
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
