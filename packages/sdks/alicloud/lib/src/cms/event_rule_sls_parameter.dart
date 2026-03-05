// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleSlsParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final pulumi.Input<String>? arn;
  /// The name of the Simple Log Service Logstore.
  final pulumi.Input<String>? logStore;
  /// The name of the Simple Log Service project.
  final pulumi.Input<String>? project;
  /// The region where Simple Log Service is deployed.
  final pulumi.Input<String>? region;
  /// The ID of the recipient that receives alert notifications.
  final pulumi.Input<String>? slsParametersId;

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStore: (() { final guardedValue = map['logStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsParametersId: (() { final guardedValue = map['slsParametersId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

