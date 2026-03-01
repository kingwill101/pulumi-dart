// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupCostManagementExportExportDataOptions {
  /// The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: `WeekToDate`, `MonthToDate`, `BillingMonthToDate`, `TheLast7Days`, `TheLastMonth`, `TheLastBillingMonth`, `Custom`.
  final String timeFrame;
  /// The type of the query. Possible values are `ActualCost`, `AmortizedCost` and `Usage`.
  final String type;

  /// Creates a new [ResourceGroupCostManagementExportExportDataOptions].
  /// [timeFrame] The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: `WeekToDate`, `MonthToDate`, `BillingMonthToDate`, `TheLast7Days`, `TheLastMonth`, `TheLastBillingMonth`, `Custom`.
  /// [type] The type of the query. Possible values are `ActualCost`, `AmortizedCost` and `Usage`.
  ResourceGroupCostManagementExportExportDataOptions({
    required this.timeFrame,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeFrame': timeFrame,
      'type': type,
    };
  }

  factory ResourceGroupCostManagementExportExportDataOptions.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementExportExportDataOptions(
      timeFrame: map['timeFrame'] as String,
      type: map['type'] as String,
    );
  }
}

