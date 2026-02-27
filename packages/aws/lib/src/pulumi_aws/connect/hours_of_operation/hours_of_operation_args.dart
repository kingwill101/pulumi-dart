// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../hours_of_operation_config/hours_of_operation_config.dart';

/// The set of arguments for HoursOfOperation.
class HoursOfOperationArgs {
  /// One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  final Input<List<HoursOfOperationConfig>> configs;

  /// Specifies the description of the Hours of Operation.
  final Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// Specifies the name of the Hours of Operation.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the time zone of the Hours of Operation.
  final Input<String> timeZone;

  HoursOfOperationArgs({
    required this.configs,
    this.description,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configs'] = Input.mapInputValue<List<HoursOfOperationConfig>,
            List<Map<String, dynamic>>>(
        configs,
        (value) =>
            Input.encodeList<HoursOfOperationConfig, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['timeZone'] = timeZone;
    return map;
  }

  factory HoursOfOperationArgs.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationArgs(
      configs: Input.asInput<List<HoursOfOperationConfig>>(map['configs']),
      description: Input.asOptionalInput<String>(map['description']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeZone: Input.asInput<String>(map['timeZone']),
    );
  }
}
