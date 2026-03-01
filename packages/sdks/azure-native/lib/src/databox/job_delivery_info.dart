// ignore_for_file: unused_element, unnecessary_cast


/// Additional delivery info.
class JobDeliveryInfo {
  /// Scheduled date time.
  final String? scheduledDateTime;

  /// Creates a new [JobDeliveryInfo].
  /// [scheduledDateTime] Scheduled date time.
  JobDeliveryInfo({
    this.scheduledDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledDateTime': ?scheduledDateTime,
    };
  }

  factory JobDeliveryInfo.fromMap(Map<String, dynamic> map) {
    return JobDeliveryInfo(
      scheduledDateTime: map['scheduledDateTime'] == null ? null : map['scheduledDateTime'] as String,
    );
  }
}

