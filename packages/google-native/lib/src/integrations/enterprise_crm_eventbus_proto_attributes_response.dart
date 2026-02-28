// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_log_settings_response.dart';
import 'enterprise_crm_eventbus_proto_value_type_response.dart';

/// Attributes are additional options that can be associated with each event property. For more information, see
class EnterpriseCrmEventbusProtoAttributesResponse {
  /// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  final String dataType;

  /// Used to define defaults.
  final EnterpriseCrmEventbusProtoValueTypeResponse defaultValue;

  /// Required for event execution. The validation will be done by the event bus when the event is triggered.
  final bool isRequired;

  /// Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  final bool isSearchable;

  /// See
  final EnterpriseCrmEventbusProtoLogSettingsResponse logSettings;

  /// Used to indicate if the ParameterEntry is a read only field or not.
  final bool readOnly;
  final String searchable;

  /// List of tasks that can view this property, if empty then all.
  final List<String> taskVisibility;

  /// Creates a new [EnterpriseCrmEventbusProtoAttributesResponse].
  /// [dataType] Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  /// [defaultValue] Used to define defaults.
  /// [isRequired] Required for event execution. The validation will be done by the event bus when the event is triggered.
  /// [isSearchable] Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  /// [logSettings] See
  /// [readOnly] Used to indicate if the ParameterEntry is a read only field or not.
  /// [searchable] Required.
  /// [taskVisibility] List of tasks that can view this property, if empty then all.
  EnterpriseCrmEventbusProtoAttributesResponse({
    required this.dataType,
    required this.defaultValue,
    required this.isRequired,
    required this.isSearchable,
    required this.logSettings,
    required this.readOnly,
    required this.searchable,
    required this.taskVisibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataType'] = dataType;
    map['defaultValue'] = defaultValue.toMap();
    map['isRequired'] = isRequired;
    map['isSearchable'] = isSearchable;
    map['logSettings'] = logSettings.toMap();
    map['readOnly'] = readOnly;
    map['searchable'] = searchable;
    map['taskVisibility'] = taskVisibility;
    return map;
  }

  factory EnterpriseCrmEventbusProtoAttributesResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoAttributesResponse(
      dataType: map['dataType'] as String,
      defaultValue: EnterpriseCrmEventbusProtoValueTypeResponse.fromMap(
          (map['defaultValue'] as Map).cast<String, dynamic>()),
      isRequired: map['isRequired'] as bool,
      isSearchable: map['isSearchable'] as bool,
      logSettings: EnterpriseCrmEventbusProtoLogSettingsResponse.fromMap(
          (map['logSettings'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] as bool,
      searchable: map['searchable'] as String,
      taskVisibility: (map['taskVisibility'] as List).cast<String>(),
    );
  }
}
