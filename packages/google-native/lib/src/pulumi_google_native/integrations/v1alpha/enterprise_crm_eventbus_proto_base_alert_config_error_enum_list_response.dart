// ignore_for_file: unused_element, unnecessary_cast

/// List of error enums for alerts.
class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse {
  final List<String> enumStrings;
  final String filterType;

  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse({
    required this.enumStrings,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enumStrings'] = enumStrings;
    map['filterType'] = filterType;
    return map;
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse(
      enumStrings: (map['enumStrings'] as List).cast<String>(),
      filterType: map['filterType'] as String,
    );
  }
}
