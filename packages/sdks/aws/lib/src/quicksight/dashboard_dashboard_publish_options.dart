// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_dashboard_publish_options_ad_hoc_filtering_option.dart';
import 'dashboard_dashboard_publish_options_data_point_drill_up_down_option.dart';
import 'dashboard_dashboard_publish_options_data_point_menu_label_option.dart';
import 'dashboard_dashboard_publish_options_data_point_tooltip_option.dart';
import 'dashboard_dashboard_publish_options_export_to_csv_option.dart';
import 'dashboard_dashboard_publish_options_export_with_hidden_fields_option.dart';
import 'dashboard_dashboard_publish_options_sheet_controls_option.dart';
import 'dashboard_dashboard_publish_options_sheet_layout_element_maximization_option.dart';
import 'dashboard_dashboard_publish_options_visual_axis_sort_option.dart';
import 'dashboard_dashboard_publish_options_visual_menu_option.dart';

class DashboardDashboardPublishOptions {
  /// Ad hoc (one-time) filtering option. See ad_hoc_filtering_option.
  final pulumi.Input<DashboardDashboardPublishOptionsAdHocFilteringOption>? adHocFilteringOption;
  /// The drill-down options of data points in a dashboard. See data_point_drill_up_down_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointDrillUpDownOption>? dataPointDrillUpDownOption;
  /// The data point menu label options of a dashboard. See data_point_menu_label_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointMenuLabelOption>? dataPointMenuLabelOption;
  /// The data point tool tip options of a dashboard. See data_point_tooltip_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointTooltipOption>? dataPointTooltipOption;
  /// Export to .csv option. See export_to_csv_option.
  final pulumi.Input<DashboardDashboardPublishOptionsExportToCsvOption>? exportToCsvOption;
  /// Determines if hidden fields are exported with a dashboard. See export_with_hidden_fields_option.
  final pulumi.Input<DashboardDashboardPublishOptionsExportWithHiddenFieldsOption>? exportWithHiddenFieldsOption;
  /// Sheet controls option. See sheet_controls_option.
  final pulumi.Input<DashboardDashboardPublishOptionsSheetControlsOption>? sheetControlsOption;
  /// The sheet layout maximization options of a dashboard. See sheet_layout_element_maximization_option.
  final pulumi.Input<DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption>? sheetLayoutElementMaximizationOption;
  /// The axis sort options of a dashboard. See visual_axis_sort_option.
  final pulumi.Input<DashboardDashboardPublishOptionsVisualAxisSortOption>? visualAxisSortOption;
  /// The menu options of a visual in a dashboard. See visual_menu_option.
  final pulumi.Input<DashboardDashboardPublishOptionsVisualMenuOption>? visualMenuOption;

  /// Creates a new [DashboardDashboardPublishOptions].
  /// [adHocFilteringOption] Ad hoc (one-time) filtering option. See ad_hoc_filtering_option.
  /// [dataPointDrillUpDownOption] The drill-down options of data points in a dashboard. See data_point_drill_up_down_option.
  /// [dataPointMenuLabelOption] The data point menu label options of a dashboard. See data_point_menu_label_option.
  /// [dataPointTooltipOption] The data point tool tip options of a dashboard. See data_point_tooltip_option.
  /// [exportToCsvOption] Export to .csv option. See export_to_csv_option.
  /// [exportWithHiddenFieldsOption] Determines if hidden fields are exported with a dashboard. See export_with_hidden_fields_option.
  /// [sheetControlsOption] Sheet controls option. See sheet_controls_option.
  /// [sheetLayoutElementMaximizationOption] The sheet layout maximization options of a dashboard. See sheet_layout_element_maximization_option.
  /// [visualAxisSortOption] The axis sort options of a dashboard. See visual_axis_sort_option.
  /// [visualMenuOption] The menu options of a visual in a dashboard. See visual_menu_option.
  DashboardDashboardPublishOptions({
    this.adHocFilteringOption,
    this.dataPointDrillUpDownOption,
    this.dataPointMenuLabelOption,
    this.dataPointTooltipOption,
    this.exportToCsvOption,
    this.exportWithHiddenFieldsOption,
    this.sheetControlsOption,
    this.sheetLayoutElementMaximizationOption,
    this.visualAxisSortOption,
    this.visualMenuOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adHocFilteringOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsAdHocFilteringOption, Map<String, dynamic>>(adHocFilteringOption, (value) => value.toMap()),
      'dataPointDrillUpDownOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsDataPointDrillUpDownOption, Map<String, dynamic>>(dataPointDrillUpDownOption, (value) => value.toMap()),
      'dataPointMenuLabelOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsDataPointMenuLabelOption, Map<String, dynamic>>(dataPointMenuLabelOption, (value) => value.toMap()),
      'dataPointTooltipOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsDataPointTooltipOption, Map<String, dynamic>>(dataPointTooltipOption, (value) => value.toMap()),
      'exportToCsvOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsExportToCsvOption, Map<String, dynamic>>(exportToCsvOption, (value) => value.toMap()),
      'exportWithHiddenFieldsOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsExportWithHiddenFieldsOption, Map<String, dynamic>>(exportWithHiddenFieldsOption, (value) => value.toMap()),
      'sheetControlsOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsSheetControlsOption, Map<String, dynamic>>(sheetControlsOption, (value) => value.toMap()),
      'sheetLayoutElementMaximizationOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption, Map<String, dynamic>>(sheetLayoutElementMaximizationOption, (value) => value.toMap()),
      'visualAxisSortOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsVisualAxisSortOption, Map<String, dynamic>>(visualAxisSortOption, (value) => value.toMap()),
      'visualMenuOption': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptionsVisualMenuOption, Map<String, dynamic>>(visualMenuOption, (value) => value.toMap()),
    };
  }

  factory DashboardDashboardPublishOptions.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptions(
      adHocFilteringOption: map['adHocFilteringOption'] == null ? null : ((DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap((map['adHocFilteringOption']! as Map).cast<String, dynamic>())).input()).input(),
      dataPointDrillUpDownOption: map['dataPointDrillUpDownOption'] == null ? null : ((DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap((map['dataPointDrillUpDownOption']! as Map).cast<String, dynamic>())).input()).input(),
      dataPointMenuLabelOption: map['dataPointMenuLabelOption'] == null ? null : ((DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap((map['dataPointMenuLabelOption']! as Map).cast<String, dynamic>())).input()).input(),
      dataPointTooltipOption: map['dataPointTooltipOption'] == null ? null : ((DashboardDashboardPublishOptionsDataPointTooltipOption.fromMap((map['dataPointTooltipOption']! as Map).cast<String, dynamic>())).input()).input(),
      exportToCsvOption: map['exportToCsvOption'] == null ? null : ((DashboardDashboardPublishOptionsExportToCsvOption.fromMap((map['exportToCsvOption']! as Map).cast<String, dynamic>())).input()).input(),
      exportWithHiddenFieldsOption: map['exportWithHiddenFieldsOption'] == null ? null : ((DashboardDashboardPublishOptionsExportWithHiddenFieldsOption.fromMap((map['exportWithHiddenFieldsOption']! as Map).cast<String, dynamic>())).input()).input(),
      sheetControlsOption: map['sheetControlsOption'] == null ? null : ((DashboardDashboardPublishOptionsSheetControlsOption.fromMap((map['sheetControlsOption']! as Map).cast<String, dynamic>())).input()).input(),
      sheetLayoutElementMaximizationOption: map['sheetLayoutElementMaximizationOption'] == null ? null : ((DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption.fromMap((map['sheetLayoutElementMaximizationOption']! as Map).cast<String, dynamic>())).input()).input(),
      visualAxisSortOption: map['visualAxisSortOption'] == null ? null : ((DashboardDashboardPublishOptionsVisualAxisSortOption.fromMap((map['visualAxisSortOption']! as Map).cast<String, dynamic>())).input()).input(),
      visualMenuOption: map['visualMenuOption'] == null ? null : ((DashboardDashboardPublishOptionsVisualMenuOption.fromMap((map['visualMenuOption']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

