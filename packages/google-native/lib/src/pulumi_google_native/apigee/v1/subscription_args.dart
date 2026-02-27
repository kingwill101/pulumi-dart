// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Subscription.
class SubscriptionArgs {
  /// Name of the API product for which the developer is purchasing a subscription.
  final Input<String>? apiproduct;
  final Input<String> developerId;

  /// Time when the API product subscription ends in milliseconds since epoch.
  final Input<String>? endTime;
  final Input<String> organizationId;

  /// Time when the API product subscription starts in milliseconds since epoch.
  final Input<String>? startTime;

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
      apiproduct: Input.asOptionalInput<String>(map['apiproduct']),
      developerId: Input.asInput<String>(map['developerId']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      organizationId: Input.asInput<String>(map['organizationId']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
    );
  }
}
