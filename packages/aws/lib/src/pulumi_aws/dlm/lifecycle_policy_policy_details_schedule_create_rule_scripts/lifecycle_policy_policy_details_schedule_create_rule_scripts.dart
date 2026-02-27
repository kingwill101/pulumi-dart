// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts {
  /// Indicates whether Amazon Data Lifecycle Manager should default to crash-consistent snapshots if the pre script fails. The default is `true`.
  final bool? executeOperationOnScriptFailure;

  /// The SSM document that includes the pre and/or post scripts to run. In case automating VSS backups, specify `AWS_VSS_BACKUP`. In case automating application-consistent snapshots for SAP HANA workloads, specify `AWSSystemsManagerSAP-CreateDLMSnapshotForSAPHANA`. If you are using a custom SSM document that you own, specify either the name or ARN of the SSM document.
  final String executionHandler;

  /// Indicates the service used to execute the pre and/or post scripts. If using custom SSM documents or automating application-consistent snapshots of SAP HANA workloads, specify `AWS_SYSTEMS_MANAGER`. In case automating VSS Backups, omit this parameter. The default is `AWS_SYSTEMS_MANAGER`.
  final String? executionHandlerService;

  /// Specifies a timeout period, in seconds, after which Amazon Data Lifecycle Manager fails the script run attempt if it has not completed. In case automating VSS Backups, omit this parameter. The default is `10`.
  final int? executionTimeout;

  /// Specifies the number of times Amazon Data Lifecycle Manager should retry scripts that fail. Must be an integer between `0` and `3`. The default is `0`.
  final int? maximumRetryCount;

  /// List to indicate which scripts Amazon Data Lifecycle Manager should run on target instances. Pre scripts run before Amazon Data Lifecycle Manager initiates snapshot creation. Post scripts run after Amazon Data Lifecycle Manager initiates snapshot creation. Valid values: `PRE` and `POST`. The default is `PRE` and `POST`
  final List<String>? stages;

  LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts({
    this.executeOperationOnScriptFailure,
    required this.executionHandler,
    this.executionHandlerService,
    this.executionTimeout,
    this.maximumRetryCount,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executeOperationOnScriptFailureValue =
        executeOperationOnScriptFailure;
    if (executeOperationOnScriptFailureValue != null) {
      map['executeOperationOnScriptFailure'] =
          executeOperationOnScriptFailureValue;
    }
    map['executionHandler'] = executionHandler;
    final executionHandlerServiceValue = executionHandlerService;
    if (executionHandlerServiceValue != null) {
      map['executionHandlerService'] = executionHandlerServiceValue;
    }
    final executionTimeoutValue = executionTimeout;
    if (executionTimeoutValue != null) {
      map['executionTimeout'] = executionTimeoutValue;
    }
    final maximumRetryCountValue = maximumRetryCount;
    if (maximumRetryCountValue != null) {
      map['maximumRetryCount'] = maximumRetryCountValue;
    }
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = stagesValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts(
      executeOperationOnScriptFailure:
          map['executeOperationOnScriptFailure'] == null
              ? null
              : map['executeOperationOnScriptFailure'] as bool,
      executionHandler: map['executionHandler'] as String,
      executionHandlerService: map['executionHandlerService'] == null
          ? null
          : map['executionHandlerService'] as String,
      executionTimeout: map['executionTimeout'] == null
          ? null
          : map['executionTimeout'] as int,
      maximumRetryCount: map['maximumRetryCount'] == null
          ? null
          : map['maximumRetryCount'] as int,
      stages:
          map['stages'] == null ? null : (map['stages'] as List).cast<String>(),
    );
  }
}
