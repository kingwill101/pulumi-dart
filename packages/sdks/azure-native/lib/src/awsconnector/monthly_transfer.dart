// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MonthlyTransfer
class MonthlyTransfer {
  /// GbPerMonthAllocated of the Instance.
  final String? gbPerMonthAllocated;

  /// Creates a new [MonthlyTransfer].
  /// [gbPerMonthAllocated] GbPerMonthAllocated of the Instance.
  MonthlyTransfer({
    this.gbPerMonthAllocated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gbPerMonthAllocated': ?gbPerMonthAllocated,
    };
  }

  factory MonthlyTransfer.fromMap(Map<String, dynamic> map) {
    return MonthlyTransfer(
      gbPerMonthAllocated: map['gbPerMonthAllocated'] == null ? null : map['gbPerMonthAllocated'] as String,
    );
  }
}

