// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetBillboardBillboardSettingsVisual {
  /// (Optional) Controls the alignment of the billboard content. Accepted values are `inline` or `stacked`.
  final String? alignment;
  /// (Optional) Controls how the billboard content is displayed. Accepted values are `auto`, `all`, `none`, `label` or `value`.
  final String? display;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsVisual].
  /// [alignment] (Optional) Controls the alignment of the billboard content. Accepted values are `inline` or `stacked`.
  /// [display] (Optional) Controls how the billboard content is displayed. Accepted values are `auto`, `all`, `none`, `label` or `value`.
  OneDashboardPageWidgetBillboardBillboardSettingsVisual({
    this.alignment,
    this.display,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alignment': ?alignment,
      'display': ?display,
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsVisual.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettingsVisual(
      alignment: map['alignment'] == null ? null : map['alignment'] as String,
      display: map['display'] == null ? null : map['display'] as String,
    );
  }
}

