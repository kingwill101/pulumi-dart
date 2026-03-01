// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardVariableOption {
  /// (Optional) An argument with a boolean value. With this turned on, the query condition defined with the variable will not be included in the query. Defaults to `false`.
  final bool? excluded;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final bool? ignoreTimeRange;
  /// (Optional) When multi-selection is enabled (`is_multi_selection = true`), displays an "Apply" button that allows users to confirm and apply their selected values to the dashboard.
  final bool? showApplyAction;

  /// Creates a new [OneDashboardVariableOption].
  /// [excluded] (Optional) An argument with a boolean value. With this turned on, the query condition defined with the variable will not be included in the query. Defaults to `false`.
  /// [ignoreTimeRange] (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  /// [showApplyAction] (Optional) When multi-selection is enabled (`is_multi_selection = true`), displays an "Apply" button that allows users to confirm and apply their selected values to the dashboard.
  OneDashboardVariableOption({
    this.excluded,
    this.ignoreTimeRange,
    this.showApplyAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excluded': ?excluded,
      'ignoreTimeRange': ?ignoreTimeRange,
      'showApplyAction': ?showApplyAction,
    };
  }

  factory OneDashboardVariableOption.fromMap(Map<String, dynamic> map) {
    return OneDashboardVariableOption(
      excluded: map['excluded'] == null ? null : map['excluded'] as bool,
      ignoreTimeRange: map['ignoreTimeRange'] == null ? null : map['ignoreTimeRange'] as bool,
      showApplyAction: map['showApplyAction'] == null ? null : map['showApplyAction'] as bool,
    );
  }
}

