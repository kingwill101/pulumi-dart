// ignore_for_file: unused_element, unnecessary_cast


class UserProvisioningUserProvisioningStatistic {
  /// Number of failed events
  final int? failedEventCount;
  /// Last Provisioning time
  final String? gmtLatestSync;

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
      failedEventCount: map['failedEventCount'] == null ? null : map['failedEventCount'] as int,
      gmtLatestSync: map['gmtLatestSync'] == null ? null : map['gmtLatestSync'] as String,
    );
  }
}

