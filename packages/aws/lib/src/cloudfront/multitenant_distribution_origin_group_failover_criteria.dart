// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginGroupFailoverCriteria {
  /// List of HTTP status codes that trigger a failover to the secondary origin.
  final List<int> statusCodes;

  /// Creates a new [MultitenantDistributionOriginGroupFailoverCriteria].
  /// [statusCodes] List of HTTP status codes that trigger a failover to the secondary origin.
  MultitenantDistributionOriginGroupFailoverCriteria({
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'statusCodes': statusCodes};
  }

  factory MultitenantDistributionOriginGroupFailoverCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionOriginGroupFailoverCriteria(
      statusCodes: (map['statusCodes'] as List).cast<int>(),
    );
  }
}
