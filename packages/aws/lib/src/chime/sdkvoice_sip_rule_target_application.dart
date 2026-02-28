// ignore_for_file: unused_element, unnecessary_cast

class SdkvoiceSipRuleTargetApplication {
  /// The AWS Region of the target application.
  final String awsRegion;

  /// Priority of the SIP media application in the target list.
  final int priority;

  /// The SIP media application ID.
  final String sipMediaApplicationId;

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
    final map = <String, dynamic>{};
    map['awsRegion'] = awsRegion;
    map['priority'] = priority;
    map['sipMediaApplicationId'] = sipMediaApplicationId;
    return map;
  }

  factory SdkvoiceSipRuleTargetApplication.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipRuleTargetApplication(
      awsRegion: map['awsRegion'] as String,
      priority: map['priority'] as int,
      sipMediaApplicationId: map['sipMediaApplicationId'] as String,
    );
  }
}
