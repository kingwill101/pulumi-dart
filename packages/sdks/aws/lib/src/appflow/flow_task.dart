// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_task_connector_operator.dart';

class FlowTask {
  /// Operation to be performed on the provided source fields. See Connector Operator for details.
  final pulumi.Input<List<FlowTaskConnectorOperator>>? connectorOperators;
  /// Field in a destination connector, or a field value against which Amazon AppFlow validates a source field.
  final pulumi.Input<String>? destinationField;
  /// Source fields to which a particular task is applied.
  final pulumi.Input<List<String>>? sourceFields;
  /// Map used to store task-related information. The execution service looks for particular information based on the `TaskType`. Valid keys are `VALUE`, `VALUES`, `DATA_TYPE`, `UPPER_BOUND`, `LOWER_BOUND`, `SOURCE_DATA_TYPE`, `DESTINATION_DATA_TYPE`, `VALIDATION_ACTION`, `MASK_VALUE`, `MASK_LENGTH`, `TRUNCATE_LENGTH`, `MATH_OPERATION_FIELDS_ORDER`, `CONCAT_FORMAT`, `SUBFIELD_CATEGORY_MAP`, and `EXCLUDE_SOURCE_FIELDS_LIST`.
  final pulumi.Input<Map<String, String>>? taskProperties;
  /// Particular task implementation that Amazon AppFlow performs. Valid values are `Arithmetic`, `Filter`, `Map`, `Map_all`, `Mask`, `Merge`, `Passthrough`, `Truncate`, and `Validate`.
  final pulumi.Input<String> taskType;

  /// Creates a new [FlowTask].
  /// [connectorOperators] Operation to be performed on the provided source fields. See Connector Operator for details.
  /// [destinationField] Field in a destination connector, or a field value against which Amazon AppFlow validates a source field.
  /// [sourceFields] Source fields to which a particular task is applied.
  /// [taskProperties] Map used to store task-related information. The execution service looks for particular information based on the `TaskType`. Valid keys are `VALUE`, `VALUES`, `DATA_TYPE`, `UPPER_BOUND`, `LOWER_BOUND`, `SOURCE_DATA_TYPE`, `DESTINATION_DATA_TYPE`, `VALIDATION_ACTION`, `MASK_VALUE`, `MASK_LENGTH`, `TRUNCATE_LENGTH`, `MATH_OPERATION_FIELDS_ORDER`, `CONCAT_FORMAT`, `SUBFIELD_CATEGORY_MAP`, and `EXCLUDE_SOURCE_FIELDS_LIST`.
  /// [taskType] Particular task implementation that Amazon AppFlow performs. Valid values are `Arithmetic`, `Filter`, `Map`, `Map_all`, `Mask`, `Merge`, `Passthrough`, `Truncate`, and `Validate`.
  FlowTask({
    this.connectorOperators,
    this.destinationField,
    this.sourceFields,
    this.taskProperties,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorOperators': ?pulumi.Input.mapOptionalInputValue<List<FlowTaskConnectorOperator>, List<Map<String, dynamic>>>(connectorOperators, (value) => pulumi.Input.encodeList<FlowTaskConnectorOperator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationField': ?destinationField,
      'sourceFields': ?sourceFields,
      'taskProperties': ?taskProperties,
      'taskType': taskType,
    };
  }

  factory FlowTask.fromMap(Map<String, dynamic> map) {
    return FlowTask(
      connectorOperators: map['connectorOperators'] == null ? null : (pulumi.Input.decodeList<FlowTaskConnectorOperator>(map['connectorOperators'], (value) => FlowTaskConnectorOperator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationField: map['destinationField'] == null ? null : (map['destinationField'] as String).input(),
      sourceFields: map['sourceFields'] == null ? null : ((map['sourceFields'] as List).cast<String>()).input(),
      taskProperties: map['taskProperties'] == null ? null : ((map['taskProperties'] as Map).cast<String, String>()).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

