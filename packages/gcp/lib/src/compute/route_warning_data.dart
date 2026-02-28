// ignore_for_file: unused_element, unnecessary_cast

class RouteWarningData {
  /// (Output)
  /// A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
  final String? key;

  /// (Output)
  /// A warning data value corresponding to the key.
  final String? value;

  /// Creates a new [RouteWarningData].
  /// [key] (Output)
  /// [value] (Output)
  RouteWarningData({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory RouteWarningData.fromMap(Map<String, dynamic> map) {
    return RouteWarningData(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
