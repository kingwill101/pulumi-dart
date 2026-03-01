// ignore_for_file: unused_element, unnecessary_cast


/// The start and end date for a budget.
class BudgetTimePeriod {
  /// The end date for the budget. If not provided, we default this to 10 years from the start date.
  final String? endDate;
  /// The start date for the budget.
  final String startDate;

  /// Creates a new [BudgetTimePeriod].
  /// [endDate] The end date for the budget. If not provided, we default this to 10 years from the start date.
  /// [startDate] The start date for the budget.
  BudgetTimePeriod({
    this.endDate,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': startDate,
    };
  }

  factory BudgetTimePeriod.fromMap(Map<String, dynamic> map) {
    return BudgetTimePeriod(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] as String,
    );
  }
}

