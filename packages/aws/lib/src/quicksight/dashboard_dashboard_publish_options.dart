// ignore_for_file: unused_element, unnecessary_cast

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
  final DashboardDashboardPublishOptionsAdHocFilteringOption?
      adHocFilteringOption;

  /// The drill-down options of data points in a dashboard. See data_point_drill_up_down_option.
  final DashboardDashboardPublishOptionsDataPointDrillUpDownOption?
      dataPointDrillUpDownOption;

  /// The data point menu label options of a dashboard. See data_point_menu_label_option.
  final DashboardDashboardPublishOptionsDataPointMenuLabelOption?
      dataPointMenuLabelOption;

  /// The data point tool tip options of a dashboard. See data_point_tooltip_option.
  final DashboardDashboardPublishOptionsDataPointTooltipOption?
      dataPointTooltipOption;

  /// Export to .csv option. See export_to_csv_option.
  final DashboardDashboardPublishOptionsExportToCsvOption? exportToCsvOption;

  /// Determines if hidden fields are exported with a dashboard. See export_with_hidden_fields_option.
  final DashboardDashboardPublishOptionsExportWithHiddenFieldsOption?
      exportWithHiddenFieldsOption;

  /// Sheet controls option. See sheet_controls_option.
  final DashboardDashboardPublishOptionsSheetControlsOption?
      sheetControlsOption;

  /// The sheet layout maximization options of a dashboard. See sheet_layout_element_maximization_option.
  final DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption?
      sheetLayoutElementMaximizationOption;

  /// The axis sort options of a dashboard. See visual_axis_sort_option.
  final DashboardDashboardPublishOptionsVisualAxisSortOption?
      visualAxisSortOption;

  /// The menu options of a visual in a dashboard. See visual_menu_option.
  final DashboardDashboardPublishOptionsVisualMenuOption? visualMenuOption;

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
    final map = <String, dynamic>{};
    final adHocFilteringOptionValue = adHocFilteringOption;
    if (adHocFilteringOptionValue != null) {
      map['adHocFilteringOption'] = adHocFilteringOptionValue.toMap();
    }
    final dataPointDrillUpDownOptionValue = dataPointDrillUpDownOption;
    if (dataPointDrillUpDownOptionValue != null) {
      map['dataPointDrillUpDownOption'] =
          dataPointDrillUpDownOptionValue.toMap();
    }
    final dataPointMenuLabelOptionValue = dataPointMenuLabelOption;
    if (dataPointMenuLabelOptionValue != null) {
      map['dataPointMenuLabelOption'] = dataPointMenuLabelOptionValue.toMap();
    }
    final dataPointTooltipOptionValue = dataPointTooltipOption;
    if (dataPointTooltipOptionValue != null) {
      map['dataPointTooltipOption'] = dataPointTooltipOptionValue.toMap();
    }
    final exportToCsvOptionValue = exportToCsvOption;
    if (exportToCsvOptionValue != null) {
      map['exportToCsvOption'] = exportToCsvOptionValue.toMap();
    }
    final exportWithHiddenFieldsOptionValue = exportWithHiddenFieldsOption;
    if (exportWithHiddenFieldsOptionValue != null) {
      map['exportWithHiddenFieldsOption'] =
          exportWithHiddenFieldsOptionValue.toMap();
    }
    final sheetControlsOptionValue = sheetControlsOption;
    if (sheetControlsOptionValue != null) {
      map['sheetControlsOption'] = sheetControlsOptionValue.toMap();
    }
    final sheetLayoutElementMaximizationOptionValue =
        sheetLayoutElementMaximizationOption;
    if (sheetLayoutElementMaximizationOptionValue != null) {
      map['sheetLayoutElementMaximizationOption'] =
          sheetLayoutElementMaximizationOptionValue.toMap();
    }
    final visualAxisSortOptionValue = visualAxisSortOption;
    if (visualAxisSortOptionValue != null) {
      map['visualAxisSortOption'] = visualAxisSortOptionValue.toMap();
    }
    final visualMenuOptionValue = visualMenuOption;
    if (visualMenuOptionValue != null) {
      map['visualMenuOption'] = visualMenuOptionValue.toMap();
    }
    return map;
  }

  factory DashboardDashboardPublishOptions.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptions(
      adHocFilteringOption: map['adHocFilteringOption'] == null
          ? null
          : DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap(
              (map['adHocFilteringOption'] as Map).cast<String, dynamic>()),
      dataPointDrillUpDownOption: map['dataPointDrillUpDownOption'] == null
          ? null
          : DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap(
              (map['dataPointDrillUpDownOption'] as Map)
                  .cast<String, dynamic>()),
      dataPointMenuLabelOption: map['dataPointMenuLabelOption'] == null
          ? null
          : DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap(
              (map['dataPointMenuLabelOption'] as Map).cast<String, dynamic>()),
      dataPointTooltipOption: map['dataPointTooltipOption'] == null
          ? null
          : DashboardDashboardPublishOptionsDataPointTooltipOption.fromMap(
              (map['dataPointTooltipOption'] as Map).cast<String, dynamic>()),
      exportToCsvOption: map['exportToCsvOption'] == null
          ? null
          : DashboardDashboardPublishOptionsExportToCsvOption.fromMap(
              (map['exportToCsvOption'] as Map).cast<String, dynamic>()),
      exportWithHiddenFieldsOption: map['exportWithHiddenFieldsOption'] == null
          ? null
          : DashboardDashboardPublishOptionsExportWithHiddenFieldsOption
              .fromMap((map['exportWithHiddenFieldsOption'] as Map)
                  .cast<String, dynamic>()),
      sheetControlsOption: map['sheetControlsOption'] == null
          ? null
          : DashboardDashboardPublishOptionsSheetControlsOption.fromMap(
              (map['sheetControlsOption'] as Map).cast<String, dynamic>()),
      sheetLayoutElementMaximizationOption: map[
                  'sheetLayoutElementMaximizationOption'] ==
              null
          ? null
          : DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption
              .fromMap((map['sheetLayoutElementMaximizationOption'] as Map)
                  .cast<String, dynamic>()),
      visualAxisSortOption: map['visualAxisSortOption'] == null
          ? null
          : DashboardDashboardPublishOptionsVisualAxisSortOption.fromMap(
              (map['visualAxisSortOption'] as Map).cast<String, dynamic>()),
      visualMenuOption: map['visualMenuOption'] == null
          ? null
          : DashboardDashboardPublishOptionsVisualMenuOption.fromMap(
              (map['visualMenuOption'] as Map).cast<String, dynamic>()),
    );
  }
}
