// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardRawPageWidget {
  /// (Required) Column position of widget from top left, starting at `1`.
  final int column;
  /// (Required) The configuration of the widget.
  final String configuration;
  /// (Optional) Height of the widget. Valid values are `1` to `12` inclusive. Defaults to `3`.
  final int? height;
  /// The ID of the widget.
  final String? id;
  /// (Optional) Related entity GUIDs.
  final List<String>? linkedEntityGuids;
  /// (Required) Row position of widget from top left, starting at `1`.
  final int row;
  /// (Required) A title for the widget.
  final String title;
  /// (Required) The visualization ID of the widget
  final String visualizationId;
  /// (Optional) Width of the widget. Valid values are `1` to `12` inclusive. Defaults to `4`.
  final int? width;

  /// Creates a new [OneDashboardRawPageWidget].
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [configuration] (Required) The configuration of the widget.
  /// [height] (Optional) Height of the widget. Valid values are `1` to `12` inclusive. Defaults to `3`.
  /// [id] The ID of the widget.
  /// [linkedEntityGuids] (Optional) Related entity GUIDs.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [title] (Required) A title for the widget.
  /// [visualizationId] (Required) The visualization ID of the widget
  /// [width] (Optional) Width of the widget. Valid values are `1` to `12` inclusive. Defaults to `4`.
  OneDashboardRawPageWidget({
    required this.column,
    required this.configuration,
    this.height,
    this.id,
    this.linkedEntityGuids,
    required this.row,
    required this.title,
    required this.visualizationId,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'configuration': configuration,
      'height': ?height,
      'id': ?id,
      'linkedEntityGuids': ?linkedEntityGuids,
      'row': row,
      'title': title,
      'visualizationId': visualizationId,
      'width': ?width,
    };
  }

  factory OneDashboardRawPageWidget.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawPageWidget(
      column: map['column'] as int,
      configuration: map['configuration'] as String,
      height: map['height'] == null ? null : map['height'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      linkedEntityGuids: map['linkedEntityGuids'] == null ? null : (map['linkedEntityGuids'] as List).cast<String>(),
      row: map['row'] as int,
      title: map['title'] as String,
      visualizationId: map['visualizationId'] as String,
      width: map['width'] == null ? null : map['width'] as int,
    );
  }
}

