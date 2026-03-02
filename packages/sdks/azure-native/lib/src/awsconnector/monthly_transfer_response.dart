// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MonthlyTransfer
class MonthlyTransferResponse {
  /// GbPerMonthAllocated of the Instance.
  final pulumi.Input<String>? gbPerMonthAllocated;

  /// Creates a new [MonthlyTransferResponse].
  /// [gbPerMonthAllocated] GbPerMonthAllocated of the Instance.
  MonthlyTransferResponse({
    this.gbPerMonthAllocated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gbPerMonthAllocated': ?gbPerMonthAllocated,
    };
  }

  factory MonthlyTransferResponse.fromMap(Map<String, dynamic> map) {
    return MonthlyTransferResponse(
      gbPerMonthAllocated: map['gbPerMonthAllocated'] == null ? null : (map['gbPerMonthAllocated'] as String).input(),
    );
  }
}

