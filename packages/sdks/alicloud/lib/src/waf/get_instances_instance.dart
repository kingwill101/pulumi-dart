// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The timestamp (in seconds) indicating when the WAF instance expires.
  final pulumi.Input<int> endDate;
  /// The ID of the WAF instance.
  final pulumi.Input<String> id;
  /// Indicates whether the WAF instance has overdue payments.
  final pulumi.Input<int> inDebt;
  /// The ID of WAF the instance.
  final pulumi.Input<String> instanceId;
  /// The number of days before the trial period of the WAF instance expires.
  final pulumi.Input<int> remainDay;
  /// The status of WAF instance to filter results. Optional value: `0`: The instance has expired, `1` : The instance has not expired and is working properly.
  final pulumi.Input<int> status;
  final pulumi.Input<String> subscriptionType;
  /// Indicates whether this is a trial instance.
  final pulumi.Input<int> trial;

  /// Creates a new [GetInstancesInstance].
  /// [endDate] The timestamp (in seconds) indicating when the WAF instance expires.
  /// [id] The ID of the WAF instance.
  /// [inDebt] Indicates whether the WAF instance has overdue payments.
  /// [instanceId] The ID of WAF the instance.
  /// [remainDay] The number of days before the trial period of the WAF instance expires.
  /// [status] The status of WAF instance to filter results. Optional value: `0`: The instance has expired, `1` : The instance has not expired and is working properly.
  /// [subscriptionType] Required.
  /// [trial] Indicates whether this is a trial instance.
  GetInstancesInstance({
    required this.endDate,
    required this.id,
    required this.inDebt,
    required this.instanceId,
    required this.remainDay,
    required this.status,
    required this.subscriptionType,
    required this.trial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate,
      'id': id,
      'inDebt': inDebt,
      'instanceId': instanceId,
      'remainDay': remainDay,
      'status': status,
      'subscriptionType': subscriptionType,
      'trial': trial,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      endDate: (map['endDate'] as int).input(),
      id: (map['id'] as String).input(),
      inDebt: (map['inDebt'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      remainDay: (map['remainDay'] as int).input(),
      status: (map['status'] as int).input(),
      subscriptionType: (map['subscriptionType'] as String).input(),
      trial: (map['trial'] as int).input(),
    );
  }
}

