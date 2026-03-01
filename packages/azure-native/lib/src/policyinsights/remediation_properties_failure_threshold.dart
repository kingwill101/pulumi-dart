// ignore_for_file: unused_element, unnecessary_cast


/// The remediation failure threshold settings
class RemediationPropertiesFailureThreshold {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final double? percentage;

  /// Creates a new [RemediationPropertiesFailureThreshold].
  /// [percentage] A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  RemediationPropertiesFailureThreshold({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory RemediationPropertiesFailureThreshold.fromMap(Map<String, dynamic> map) {
    return RemediationPropertiesFailureThreshold(
      percentage: map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}

