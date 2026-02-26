// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsSheetControlsOption {
  /// Visibility state. Possibles values: EXPANDED, COLLAPSED.
  final String? visibilityState;

  DashboardDashboardPublishOptionsSheetControlsOption({
    this.visibilityState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final visibilityStateValue = visibilityState;
    if (visibilityStateValue != null) {
      map['visibilityState'] = visibilityStateValue;
    }
    return map;
  }

  factory DashboardDashboardPublishOptionsSheetControlsOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsSheetControlsOption(
      visibilityState: map['visibilityState'] == null
          ? null
          : map['visibilityState'] as String,
    );
  }
}
