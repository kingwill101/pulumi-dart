// ignore_for_file: unused_element, unnecessary_cast


class QueryLoggingConfigurationDestinationFilters {
  /// The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.
  final int qspThreshold;

  /// Creates a new [QueryLoggingConfigurationDestinationFilters].
  /// [qspThreshold] The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.
  QueryLoggingConfigurationDestinationFilters({
    required this.qspThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qspThreshold': qspThreshold,
    };
  }

  factory QueryLoggingConfigurationDestinationFilters.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestinationFilters(
      qspThreshold: map['qspThreshold'] as int,
    );
  }
}

