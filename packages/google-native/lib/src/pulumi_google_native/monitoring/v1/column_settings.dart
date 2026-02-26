// ignore_for_file: unused_element, unnecessary_cast

/// The persistent settings for a table's columns.
class ColumnSettings {
  /// The id of the column.
  final String column;

  /// Whether the column should be visible on page load.
  final bool visible;

  ColumnSettings({
    required this.column,
    required this.visible,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['visible'] = visible;
    return map;
  }

  factory ColumnSettings.fromMap(Map<String, dynamic> map) {
    return ColumnSettings(
      column: map['column'] as String,
      visible: map['visible'] as bool,
    );
  }
}
