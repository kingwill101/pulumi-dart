// ignore_for_file: unused_element, unnecessary_cast

/// AutomationRolloutMetadata contains Automation-related actions that were performed on a rollout.
class AutomationRolloutMetadataResponse {
  /// The IDs of the AutomationRuns initiated by an advance rollout rule.
  final List<String> advanceAutomationRuns;

  /// The ID of the AutomationRun initiated by a promote release rule.
  final String promoteAutomationRun;

  /// The IDs of the AutomationRuns initiated by a repair rollout rule.
  final List<String> repairAutomationRuns;

  /// Creates a new [AutomationRolloutMetadataResponse].
  /// [advanceAutomationRuns] The IDs of the AutomationRuns initiated by an advance rollout rule.
  /// [promoteAutomationRun] The ID of the AutomationRun initiated by a promote release rule.
  /// [repairAutomationRuns] The IDs of the AutomationRuns initiated by a repair rollout rule.
  AutomationRolloutMetadataResponse({
    required this.advanceAutomationRuns,
    required this.promoteAutomationRun,
    required this.repairAutomationRuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceAutomationRuns': advanceAutomationRuns,
      'promoteAutomationRun': promoteAutomationRun,
      'repairAutomationRuns': repairAutomationRuns,
    };
  }

  factory AutomationRolloutMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRolloutMetadataResponse(
      advanceAutomationRuns: (map['advanceAutomationRuns'] as List)
          .cast<String>(),
      promoteAutomationRun: map['promoteAutomationRun'] as String,
      repairAutomationRuns: (map['repairAutomationRuns'] as List)
          .cast<String>(),
    );
  }
}
