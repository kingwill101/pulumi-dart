// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueryLoggingConfigurationDestinationFilters {
  /// The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.
  final pulumi.Input<int> qspThreshold;

  /// Creates a new [QueryLoggingConfigurationDestinationFilters].
  /// [qspThreshold] The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.
  const QueryLoggingConfigurationDestinationFilters({
    required this.qspThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qspThreshold': qspThreshold,
    };
  }

  factory QueryLoggingConfigurationDestinationFilters.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestinationFilters(
      qspThreshold: pulumi.Input.fromValue(map['qspThreshold'] as int),
    );
  }
}
