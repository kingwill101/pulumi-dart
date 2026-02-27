// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'data_collector_type.dart';

/// The set of arguments for DataCollector.
class DataCollectorArgs {
  /// ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.
  final Input<String>? dataCollectorId;

  /// A description of the data collector.
  final Input<String>? description;

  /// ID of the data collector. Must begin with `dc_`.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Immutable. The type of data this data collector will collect.
  final Input<DataCollectorType>? type;

  DataCollectorArgs({
    this.dataCollectorId,
    this.description,
    this.name,
    required this.organizationId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCollectorIdValue = dataCollectorId;
    if (dataCollectorIdValue != null) {
      map['dataCollectorId'] = dataCollectorIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<DataCollectorType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory DataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectorArgs(
      dataCollectorId: Input.asOptionalInput<String>(map['dataCollectorId']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      type: Input.asOptionalInput<DataCollectorType>(map['type']),
    );
  }
}
