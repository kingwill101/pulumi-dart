// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_base_alert_config_error_enum_list_filter_type.dart';

/// List of error enums for alerts.
class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList {
  final List<String>? enumStrings;
  final EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType?
      filterType;

  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList({
    this.enumStrings,
    this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enumStringsValue = enumStrings;
    if (enumStringsValue != null) {
      map['enumStrings'] = enumStringsValue;
    }
    final filterTypeValue = filterType;
    if (filterTypeValue != null) {
      map['filterType'] = filterTypeValue.value;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
      enumStrings: map['enumStrings'] == null
          ? null
          : (map['enumStrings'] as List).cast<String>(),
      filterType: map['filterType'] == null
          ? null
          : EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListFilterType
              .fromValue(map['filterType'] as String),
    );
  }
}
