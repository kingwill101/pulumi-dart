// ignore_for_file: unused_element, unnecessary_cast


class EventRuleSlsParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final String? arn;
  /// The name of the Simple Log Service Logstore.
  final String? logStore;
  /// The name of the Simple Log Service project.
  final String? project;
  /// The region where Simple Log Service is deployed.
  final String? region;
  /// The ID of the recipient that receives alert notifications.
  final String? slsParametersId;

  /// Creates a new [EventRuleSlsParameter].
  /// [arn] (Available since v1.211.1) The ARN of the API operation.
  /// [logStore] The name of the Simple Log Service Logstore.
  /// [project] The name of the Simple Log Service project.
  /// [region] The region where Simple Log Service is deployed.
  /// [slsParametersId] The ID of the recipient that receives alert notifications.
  EventRuleSlsParameter({
    this.arn,
    this.logStore,
    this.project,
    this.region,
    this.slsParametersId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'logStore': ?logStore,
      'project': ?project,
      'region': ?region,
      'slsParametersId': ?slsParametersId,
    };
  }

  factory EventRuleSlsParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleSlsParameter(
      arn: map['arn'] == null ? null : map['arn'] as String,
      logStore: map['logStore'] == null ? null : map['logStore'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      slsParametersId: map['slsParametersId'] == null ? null : map['slsParametersId'] as String,
    );
  }
}

