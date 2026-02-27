// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flow_task_connector_operator/flow_task_connector_operator.dart';

class FlowTask {
  /// Operation to be performed on the provided source fields. See Connector Operator for details.
  final List<FlowTaskConnectorOperator>? connectorOperators;

  /// Field in a destination connector, or a field value against which Amazon AppFlow validates a source field.
  final String? destinationField;

  /// Source fields to which a particular task is applied.
  final List<String>? sourceFields;

  /// Map used to store task-related information. The execution service looks for particular information based on the `TaskType`. Valid keys are `VALUE`, `VALUES`, `DATA_TYPE`, `UPPER_BOUND`, `LOWER_BOUND`, `SOURCE_DATA_TYPE`, `DESTINATION_DATA_TYPE`, `VALIDATION_ACTION`, `MASK_VALUE`, `MASK_LENGTH`, `TRUNCATE_LENGTH`, `MATH_OPERATION_FIELDS_ORDER`, `CONCAT_FORMAT`, `SUBFIELD_CATEGORY_MAP`, and `EXCLUDE_SOURCE_FIELDS_LIST`.
  final Map<String, String>? taskProperties;

  /// Particular task implementation that Amazon AppFlow performs. Valid values are `Arithmetic`, `Filter`, `Map`, `Map_all`, `Mask`, `Merge`, `Passthrough`, `Truncate`, and `Validate`.
  final String taskType;

  FlowTask({
    this.connectorOperators,
    this.destinationField,
    this.sourceFields,
    this.taskProperties,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorOperatorsValue = connectorOperators;
    if (connectorOperatorsValue != null) {
      map['connectorOperators'] = pulumi.Input.encodeList<
              FlowTaskConnectorOperator, Map<String, dynamic>>(
          connectorOperatorsValue, (value) => value.toMap());
    }
    final destinationFieldValue = destinationField;
    if (destinationFieldValue != null) {
      map['destinationField'] = destinationFieldValue;
    }
    final sourceFieldsValue = sourceFields;
    if (sourceFieldsValue != null) {
      map['sourceFields'] = sourceFieldsValue;
    }
    final taskPropertiesValue = taskProperties;
    if (taskPropertiesValue != null) {
      map['taskProperties'] = taskPropertiesValue;
    }
    map['taskType'] = taskType;
    return map;
  }

  factory FlowTask.fromMap(Map<String, dynamic> map) {
    return FlowTask(
      connectorOperators: map['connectorOperators'] == null
          ? null
          : pulumi.Input.decodeList<FlowTaskConnectorOperator>(
              map['connectorOperators'],
              (value) => FlowTaskConnectorOperator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      destinationField: map['destinationField'] == null
          ? null
          : map['destinationField'] as String,
      sourceFields: map['sourceFields'] == null
          ? null
          : (map['sourceFields'] as List).cast<String>(),
      taskProperties: map['taskProperties'] == null
          ? null
          : (map['taskProperties'] as Map).cast<String, String>(),
      taskType: map['taskType'] as String,
    );
  }
}
