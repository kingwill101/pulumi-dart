// ignore_for_file: unused_element, unnecessary_cast


/// The persistent settings for a table's columns.
class ColumnSettings {
  /// The id of the column.
  final String column;
  /// Whether the column should be visible on page load.
  final bool visible;

  /// Creates a new [ColumnSettings].
  /// [column] The id of the column.
  /// [visible] Whether the column should be visible on page load.
  ColumnSettings({
    required this.column,
    required this.visible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'visible': visible,
    };
  }

  factory ColumnSettings.fromMap(Map<String, dynamic> map) {
    return ColumnSettings(
      column: map['column'] as String,
      visible: map['visible'] as bool,
    );
  }
}

