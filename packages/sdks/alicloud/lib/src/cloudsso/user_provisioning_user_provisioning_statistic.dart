// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProvisioningUserProvisioningStatistic {
  /// Number of failed events
  final pulumi.Input<int>? failedEventCount;
  /// Last Provisioning time
  final pulumi.Input<String>? gmtLatestSync;

  /// Creates a new [UserProvisioningUserProvisioningStatistic].
  /// [failedEventCount] Number of failed events
  /// [gmtLatestSync] Last Provisioning time
  UserProvisioningUserProvisioningStatistic({
    this.failedEventCount,
    this.gmtLatestSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedEventCount': ?failedEventCount,
      'gmtLatestSync': ?gmtLatestSync,
    };
  }

  factory UserProvisioningUserProvisioningStatistic.fromMap(Map<String, dynamic> map) {
    return UserProvisioningUserProvisioningStatistic(
      failedEventCount: map['failedEventCount'] == null ? null : (map['failedEventCount']! as int).input(),
      gmtLatestSync: map['gmtLatestSync'] == null ? null : (map['gmtLatestSync']! as String).input(),
    );
  }
}

