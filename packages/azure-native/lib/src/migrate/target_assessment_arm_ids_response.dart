// ignore_for_file: unused_element, unnecessary_cast


/// ARM IDs of the target assessments.
class TargetAssessmentArmIdsResponse {
  /// ARM ID for Azure Kubernetes Service assessment.
  final String? aks;
  /// ARM ID for Azure App Service assessment.
  final String? azureAppService;
  /// ARM ID for Azure App Service Container assessment.
  final String? azureAppServiceContainer;

  /// Creates a new [TargetAssessmentArmIdsResponse].
  /// [aks] ARM ID for Azure Kubernetes Service assessment.
  /// [azureAppService] ARM ID for Azure App Service assessment.
  /// [azureAppServiceContainer] ARM ID for Azure App Service Container assessment.
  TargetAssessmentArmIdsResponse({
    this.aks,
    this.azureAppService,
    this.azureAppServiceContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aks': ?aks,
      'azureAppService': ?azureAppService,
      'azureAppServiceContainer': ?azureAppServiceContainer,
    };
  }

  factory TargetAssessmentArmIdsResponse.fromMap(Map<String, dynamic> map) {
    return TargetAssessmentArmIdsResponse(
      aks: map['aks'] == null ? null : map['aks'] as String,
      azureAppService: map['azureAppService'] == null ? null : map['azureAppService'] as String,
      azureAppServiceContainer: map['azureAppServiceContainer'] == null ? null : map['azureAppServiceContainer'] as String,
    );
  }
}

