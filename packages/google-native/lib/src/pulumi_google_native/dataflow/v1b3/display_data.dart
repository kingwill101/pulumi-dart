// ignore_for_file: unused_element, unnecessary_cast

/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayData {
  /// Contains value if the data is of a boolean type.
  final bool? boolValue;

  /// Contains value if the data is of duration type.
  final String? durationValue;

  /// Contains value if the data is of float type.
  final double? floatValue;

  /// Contains value if the data is of int64 type.
  final String? int64Value;

  /// Contains value if the data is of java class type.
  final String? javaClassValue;

  /// The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
  final String? key;

  /// An optional label to display in a dax UI for the element.
  final String? label;

  /// The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
  final String? namespace;

  /// A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.
  final String? shortStrValue;

  /// Contains value if the data is of string type.
  final String? strValue;

  /// Contains value if the data is of timestamp type.
  final String? timestampValue;

  /// An optional full URL.
  final String? url;

  DisplayData({
    this.boolValue,
    this.durationValue,
    this.floatValue,
    this.int64Value,
    this.javaClassValue,
    this.key,
    this.label,
    this.namespace,
    this.shortStrValue,
    this.strValue,
    this.timestampValue,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boolValueValue = boolValue;
    if (boolValueValue != null) {
      map['boolValue'] = boolValueValue;
    }
    final durationValueValue = durationValue;
    if (durationValueValue != null) {
      map['durationValue'] = durationValueValue;
    }
    final floatValueValue = floatValue;
    if (floatValueValue != null) {
      map['floatValue'] = floatValueValue;
    }
    final int64ValueValue = int64Value;
    if (int64ValueValue != null) {
      map['int64Value'] = int64ValueValue;
    }
    final javaClassValueValue = javaClassValue;
    if (javaClassValueValue != null) {
      map['javaClassValue'] = javaClassValueValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final shortStrValueValue = shortStrValue;
    if (shortStrValueValue != null) {
      map['shortStrValue'] = shortStrValueValue;
    }
    final strValueValue = strValue;
    if (strValueValue != null) {
      map['strValue'] = strValueValue;
    }
    final timestampValueValue = timestampValue;
    if (timestampValueValue != null) {
      map['timestampValue'] = timestampValueValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory DisplayData.fromMap(Map<String, dynamic> map) {
    return DisplayData(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      durationValue:
          map['durationValue'] == null ? null : map['durationValue'] as String,
      floatValue:
          map['floatValue'] == null ? null : map['floatValue'] as double,
      int64Value:
          map['int64Value'] == null ? null : map['int64Value'] as String,
      javaClassValue: map['javaClassValue'] == null
          ? null
          : map['javaClassValue'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      shortStrValue:
          map['shortStrValue'] == null ? null : map['shortStrValue'] as String,
      strValue: map['strValue'] == null ? null : map['strValue'] as String,
      timestampValue: map['timestampValue'] == null
          ? null
          : map['timestampValue'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
