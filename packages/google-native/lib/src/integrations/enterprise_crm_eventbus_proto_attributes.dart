// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_attributes_data_type.dart';
import 'enterprise_crm_eventbus_proto_attributes_searchable.dart';
import 'enterprise_crm_eventbus_proto_log_settings.dart';
import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Attributes are additional options that can be associated with each event property. For more information, see
class EnterpriseCrmEventbusProtoAttributes {
  /// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  final EnterpriseCrmEventbusProtoAttributesDataType? dataType;

  /// Used to define defaults.
  final EnterpriseCrmEventbusProtoValueType? defaultValue;

  /// Required for event execution. The validation will be done by the event bus when the event is triggered.
  final bool? isRequired;

  /// Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  final bool? isSearchable;

  /// See
  final EnterpriseCrmEventbusProtoLogSettings? logSettings;

  /// Used to indicate if the ParameterEntry is a read only field or not.
  final bool? readOnly;
  final EnterpriseCrmEventbusProtoAttributesSearchable? searchable;

  /// List of tasks that can view this property, if empty then all.
  final List<String>? taskVisibility;

  /// Creates a new [EnterpriseCrmEventbusProtoAttributes].
  /// [dataType] Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  /// [defaultValue] Used to define defaults.
  /// [isRequired] Required for event execution. The validation will be done by the event bus when the event is triggered.
  /// [isSearchable] Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  /// [logSettings] See
  /// [readOnly] Used to indicate if the ParameterEntry is a read only field or not.
  /// [searchable] Optional.
  /// [taskVisibility] List of tasks that can view this property, if empty then all.
  EnterpriseCrmEventbusProtoAttributes({
    this.dataType,
    this.defaultValue,
    this.isRequired,
    this.isSearchable,
    this.logSettings,
    this.readOnly,
    this.searchable,
    this.taskVisibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue.value;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue.toMap();
    }
    final isRequiredValue = isRequired;
    if (isRequiredValue != null) {
      map['isRequired'] = isRequiredValue;
    }
    final isSearchableValue = isSearchable;
    if (isSearchableValue != null) {
      map['isSearchable'] = isSearchableValue;
    }
    final logSettingsValue = logSettings;
    if (logSettingsValue != null) {
      map['logSettings'] = logSettingsValue.toMap();
    }
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final searchableValue = searchable;
    if (searchableValue != null) {
      map['searchable'] = searchableValue.value;
    }
    final taskVisibilityValue = taskVisibility;
    if (taskVisibilityValue != null) {
      map['taskVisibility'] = taskVisibilityValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoAttributes.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoAttributes(
      dataType: map['dataType'] == null
          ? null
          : EnterpriseCrmEventbusProtoAttributesDataType.fromValue(
              map['dataType'] as String),
      defaultValue: map['defaultValue'] == null
          ? null
          : EnterpriseCrmEventbusProtoValueType.fromMap(
              (map['defaultValue'] as Map).cast<String, dynamic>()),
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      isSearchable:
          map['isSearchable'] == null ? null : map['isSearchable'] as bool,
      logSettings: map['logSettings'] == null
          ? null
          : EnterpriseCrmEventbusProtoLogSettings.fromMap(
              (map['logSettings'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      searchable: map['searchable'] == null
          ? null
          : EnterpriseCrmEventbusProtoAttributesSearchable.fromValue(
              map['searchable'] as String),
      taskVisibility: map['taskVisibility'] == null
          ? null
          : (map['taskVisibility'] as List).cast<String>(),
    );
  }
}
