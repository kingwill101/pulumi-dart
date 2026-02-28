// ignore_for_file: unused_element, unnecessary_cast

class BudgetBudgetFilterCustomPeriodEndDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month.
  final int day;

  /// Month of a year. Must be from 1 to 12.
  final int month;

  /// Year of the date. Must be from 1 to 9999.
  final int year;

  /// Creates a new [BudgetBudgetFilterCustomPeriodEndDate].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month.
  /// [month] Month of a year. Must be from 1 to 12.
  /// [year] Year of the date. Must be from 1 to 9999.
  BudgetBudgetFilterCustomPeriodEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['month'] = month;
    map['year'] = year;
    return map;
  }

  factory BudgetBudgetFilterCustomPeriodEndDate.fromMap(
      Map<String, dynamic> map) {
    return BudgetBudgetFilterCustomPeriodEndDate(
      day: map['day'] as int,
      month: map['month'] as int,
      year: map['year'] as int,
    );
  }
}
