// ignore_for_file: unused_element, unnecessary_cast


class JobJobMonitorInfoContactInfo {
  /// DingTalk swarm robot webhook address
  final String? ding;
  /// User Email Address
  final String? userMail;
  /// The user name
  final String? userName;
  /// The user's mobile phone number
  final String? userPhone;

  /// Creates a new [JobJobMonitorInfoContactInfo].
  /// [ding] DingTalk swarm robot webhook address
  /// [userMail] User Email Address
  /// [userName] The user name
  /// [userPhone] The user's mobile phone number
  JobJobMonitorInfoContactInfo({
    this.ding,
    this.userMail,
    this.userName,
    this.userPhone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ding': ?ding,
      'userMail': ?userMail,
      'userName': ?userName,
      'userPhone': ?userPhone,
    };
  }

  factory JobJobMonitorInfoContactInfo.fromMap(Map<String, dynamic> map) {
    return JobJobMonitorInfoContactInfo(
      ding: map['ding'] == null ? null : map['ding'] as String,
      userMail: map['userMail'] == null ? null : map['userMail'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      userPhone: map['userPhone'] == null ? null : map['userPhone'] as String,
    );
  }
}

