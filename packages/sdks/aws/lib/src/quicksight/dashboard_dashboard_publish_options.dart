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
  final pulumi.Input<DashboardDashboardPublishOptionsAdHocFilteringOption?>? adHocFilteringOption;
  /// The drill-down options of data points in a dashboard. See data_point_drill_up_down_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointDrillUpDownOption?>? dataPointDrillUpDownOption;
  /// The data point menu label options of a dashboard. See data_point_menu_label_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointMenuLabelOption?>? dataPointMenuLabelOption;
  /// The data point tool tip options of a dashboard. See data_point_tooltip_option.
  final pulumi.Input<DashboardDashboardPublishOptionsDataPointTooltipOption?>? dataPointTooltipOption;
  /// Export to .csv option. See export_to_csv_option.
  final pulumi.Input<DashboardDashboardPublishOptionsExportToCsvOption?>? exportToCsvOption;
  /// Determines if hidden fields are exported with a dashboard. See export_with_hidden_fields_option.
  final pulumi.Input<DashboardDashboardPublishOptionsExportWithHiddenFieldsOption?>? exportWithHiddenFieldsOption;
  /// Sheet controls option. See sheet_controls_option.
  final pulumi.Input<DashboardDashboardPublishOptionsSheetControlsOption?>? sheetControlsOption;
  /// The sheet layout maximization options of a dashboard. See sheet_layout_element_maximization_option.
  final pulumi.Input<DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption?>? sheetLayoutElementMaximizationOption;
  /// The axis sort options of a dashboard. See visual_axis_sort_option.
  final pulumi.Input<DashboardDashboardPublishOptionsVisualAxisSortOption?>? visualAxisSortOption;
  /// The menu options of a visual in a dashboard. See visual_menu_option.
  final pulumi.Input<DashboardDashboardPublishOptionsVisualMenuOption?>? visualMenuOption;

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
  const DashboardDashboardPublishOptions({
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
      adHocFilteringOption: (() { final guardedValue = map['adHocFilteringOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPointDrillUpDownOption: (() { final guardedValue = map['dataPointDrillUpDownOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPointMenuLabelOption: (() { final guardedValue = map['dataPointMenuLabelOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataPointTooltipOption: (() { final guardedValue = map['dataPointTooltipOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsDataPointTooltipOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportToCsvOption: (() { final guardedValue = map['exportToCsvOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsExportToCsvOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportWithHiddenFieldsOption: (() { final guardedValue = map['exportWithHiddenFieldsOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsExportWithHiddenFieldsOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sheetControlsOption: (() { final guardedValue = map['sheetControlsOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsSheetControlsOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sheetLayoutElementMaximizationOption: (() { final guardedValue = map['sheetLayoutElementMaximizationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visualAxisSortOption: (() { final guardedValue = map['visualAxisSortOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsVisualAxisSortOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visualMenuOption: (() { final guardedValue = map['visualMenuOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptionsVisualMenuOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
