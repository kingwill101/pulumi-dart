// ignore_for_file: unused_element, unnecessary_cast


class EventRuleFcParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final String? arn;
  /// The ID of the recipient that receives alert notifications.
  final String? fcParametersId;
  /// The name of the function.
  final String? functionName;
  /// The region where Function Compute is deployed.
  final String? region;
  /// The name of the Function Compute service.
  final String? serviceName;

  /// Creates a new [EventRuleFcParameter].
  /// [arn] (Available since v1.211.1) The ARN of the API operation.
  /// [fcParametersId] The ID of the recipient that receives alert notifications.
  /// [functionName] The name of the function.
  /// [region] The region where Function Compute is deployed.
  /// [serviceName] The name of the Function Compute service.
  EventRuleFcParameter({
    this.arn,
    this.fcParametersId,
    this.functionName,
    this.region,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fcParametersId': ?fcParametersId,
      'functionName': ?functionName,
      'region': ?region,
      'serviceName': ?serviceName,
    };
  }

  factory EventRuleFcParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleFcParameter(
      arn: map['arn'] == null ? null : map['arn'] as String,
      fcParametersId: map['fcParametersId'] == null ? null : map['fcParametersId'] as String,
      functionName: map['functionName'] == null ? null : map['functionName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

