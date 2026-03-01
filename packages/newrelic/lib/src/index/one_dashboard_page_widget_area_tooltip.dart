// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetAreaTooltip {
  /// (Required) The tooltip display mode. Valid values are:
  final String mode;

  /// Creates a new [OneDashboardPageWidgetAreaTooltip].
  /// [mode] (Required) The tooltip display mode. Valid values are:
  OneDashboardPageWidgetAreaTooltip({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory OneDashboardPageWidgetAreaTooltip.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetAreaTooltip(
      mode: map['mode'] as String,
    );
  }
}

