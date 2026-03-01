// ignore_for_file: unused_element, unnecessary_cast


/// The remediation failure threshold settings
class RemediationPropertiesResponseFailureThreshold {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final double? percentage;

  /// Creates a new [RemediationPropertiesResponseFailureThreshold].
  /// [percentage] A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  RemediationPropertiesResponseFailureThreshold({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory RemediationPropertiesResponseFailureThreshold.fromMap(Map<String, dynamic> map) {
    return RemediationPropertiesResponseFailureThreshold(
      percentage: map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}

