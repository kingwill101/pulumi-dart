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
  const EventRuleFcParameter({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fcParametersId: (() { final guardedValue = map['fcParametersId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

