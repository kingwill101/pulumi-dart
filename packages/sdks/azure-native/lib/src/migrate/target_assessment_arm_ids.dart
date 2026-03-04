// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ARM IDs of the target assessments.
class TargetAssessmentArmIds {
  /// ARM ID for Azure Kubernetes Service assessment.
  final pulumi.Input<String>? aks;

  /// ARM ID for Azure App Service assessment.
  final pulumi.Input<String>? azureAppService;

  /// ARM ID for Azure App Service Container assessment.
  final pulumi.Input<String>? azureAppServiceContainer;

  /// Creates a new [TargetAssessmentArmIds].
  /// [aks] ARM ID for Azure Kubernetes Service assessment.
  /// [azureAppService] ARM ID for Azure App Service assessment.
  /// [azureAppServiceContainer] ARM ID for Azure App Service Container assessment.
  TargetAssessmentArmIds({
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

  factory TargetAssessmentArmIds.fromMap(Map<String, dynamic> map) {
    return TargetAssessmentArmIds(
      aks: (() {
        final guardedValue = map['aks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureAppService: (() {
        final guardedValue = map['azureAppService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureAppServiceContainer: (() {
        final guardedValue = map['azureAppServiceContainer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
