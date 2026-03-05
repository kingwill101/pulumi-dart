// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SdkvoiceSipRuleTargetApplication {
  /// The AWS Region of the target application.
  final pulumi.Input<String> awsRegion;
  /// Priority of the SIP media application in the target list.
  final pulumi.Input<int> priority;
  /// The SIP media application ID.
  final pulumi.Input<String> sipMediaApplicationId;

  /// Creates a new [SdkvoiceSipRuleTargetApplication].
  /// [awsRegion] The AWS Region of the target application.
  /// [priority] Priority of the SIP media application in the target list.
  /// [sipMediaApplicationId] The SIP media application ID.
  SdkvoiceSipRuleTargetApplication({
    required this.awsRegion,
    required this.priority,
    required this.sipMediaApplicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': awsRegion,
      'priority': priority,
      'sipMediaApplicationId': sipMediaApplicationId,
    };
  }

  factory SdkvoiceSipRuleTargetApplication.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipRuleTargetApplication(
      awsRegion: pulumi.Input.fromValue(map['awsRegion'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      sipMediaApplicationId: pulumi.Input.fromValue(map['sipMediaApplicationId'] as String),
    );
  }
}

