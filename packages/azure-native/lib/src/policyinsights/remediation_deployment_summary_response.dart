// ignore_for_file: unused_element, unnecessary_cast


/// The deployment status summary for all deployments created by the remediation.
class RemediationDeploymentSummaryResponse {
  /// The number of deployments required by the remediation that have failed.
  final int failedDeployments;
  /// The number of deployments required by the remediation that have succeeded.
  final int successfulDeployments;
  /// The number of deployments required by the remediation.
  final int totalDeployments;

  /// Creates a new [RemediationDeploymentSummaryResponse].
  /// [failedDeployments] The number of deployments required by the remediation that have failed.
  /// [successfulDeployments] The number of deployments required by the remediation that have succeeded.
  /// [totalDeployments] The number of deployments required by the remediation.
  RemediationDeploymentSummaryResponse({
    required this.failedDeployments,
    required this.successfulDeployments,
    required this.totalDeployments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedDeployments': failedDeployments,
      'successfulDeployments': successfulDeployments,
      'totalDeployments': totalDeployments,
    };
  }

  factory RemediationDeploymentSummaryResponse.fromMap(Map<String, dynamic> map) {
    return RemediationDeploymentSummaryResponse(
      failedDeployments: map['failedDeployments'] as int,
      successfulDeployments: map['successfulDeployments'] as int,
      totalDeployments: map['totalDeployments'] as int,
    );
  }
}

