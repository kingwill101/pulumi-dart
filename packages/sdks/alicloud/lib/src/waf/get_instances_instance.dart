// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The timestamp (in seconds) indicating when the WAF instance expires.
  final int endDate;
  /// The ID of the WAF instance.
  final String id;
  /// Indicates whether the WAF instance has overdue payments.
  final int inDebt;
  /// The ID of WAF the instance.
  final String instanceId;
  /// The number of days before the trial period of the WAF instance expires.
  final int remainDay;
  /// The status of WAF instance to filter results. Optional value: `0`: The instance has expired, `1` : The instance has not expired and is working properly.
  final int status;
  final String subscriptionType;
  /// Indicates whether this is a trial instance.
  final int trial;

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
      endDate: map['endDate'] as int,
      id: map['id'] as String,
      inDebt: map['inDebt'] as int,
      instanceId: map['instanceId'] as String,
      remainDay: map['remainDay'] as int,
      status: map['status'] as int,
      subscriptionType: map['subscriptionType'] as String,
      trial: map['trial'] as int,
    );
  }
}

