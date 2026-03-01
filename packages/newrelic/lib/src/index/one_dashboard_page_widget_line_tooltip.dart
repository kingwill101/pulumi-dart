// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetLineTooltip {
  /// (Required) The tooltip display mode. Valid values are:
  final String mode;

  /// Creates a new [OneDashboardPageWidgetLineTooltip].
  /// [mode] (Required) The tooltip display mode. Valid values are:
  OneDashboardPageWidgetLineTooltip({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory OneDashboardPageWidgetLineTooltip.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineTooltip(
      mode: map['mode'] as String,
    );
  }
}

