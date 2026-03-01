// ignore_for_file: unused_element, unnecessary_cast


class DashboardDashboardPublishOptionsSheetControlsOption {
  /// Visibility state. Possibles values: EXPANDED, COLLAPSED.
  final String? visibilityState;

  /// Creates a new [DashboardDashboardPublishOptionsSheetControlsOption].
  /// [visibilityState] Visibility state. Possibles values: EXPANDED, COLLAPSED.
  DashboardDashboardPublishOptionsSheetControlsOption({
    this.visibilityState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibilityState': ?visibilityState,
    };
  }

  factory DashboardDashboardPublishOptionsSheetControlsOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsSheetControlsOption(
      visibilityState: map['visibilityState'] == null ? null : map['visibilityState'] as String,
    );
  }
}

