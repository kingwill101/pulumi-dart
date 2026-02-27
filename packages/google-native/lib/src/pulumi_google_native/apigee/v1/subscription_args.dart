// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Subscription.
class SubscriptionArgs {
  /// Name of the API product for which the developer is purchasing a subscription.
  final pulumi.Input<String>? apiproduct;
  final pulumi.Input<String> developerId;

  /// Time when the API product subscription ends in milliseconds since epoch.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String> organizationId;

  /// Time when the API product subscription starts in milliseconds since epoch.
  final pulumi.Input<String>? startTime;

  SubscriptionArgs({
    this.apiproduct,
    required this.developerId,
    this.endTime,
    required this.organizationId,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiproductValue = apiproduct;
    if (apiproductValue != null) {
      map['apiproduct'] = apiproductValue;
    }
    map['developerId'] = developerId;
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['organizationId'] = organizationId;
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      apiproduct: pulumi.Input.asOptionalInput<String>(map['apiproduct']),
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
    );
  }
}
