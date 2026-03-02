// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleFcParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final pulumi.Input<String>? arn;
  /// The ID of the recipient that receives alert notifications.
  final pulumi.Input<String>? fcParametersId;
  /// The name of the function.
  final pulumi.Input<String>? functionName;
  /// The region where Function Compute is deployed.
  final pulumi.Input<String>? region;
  /// The name of the Function Compute service.
  final pulumi.Input<String>? serviceName;

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
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      fcParametersId: map['fcParametersId'] == null ? null : (map['fcParametersId']! as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
    );
  }
}

