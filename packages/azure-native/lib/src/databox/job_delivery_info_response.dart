// ignore_for_file: unused_element, unnecessary_cast


/// Additional delivery info.
class JobDeliveryInfoResponse {
  /// Scheduled date time.
  final String? scheduledDateTime;

  /// Creates a new [JobDeliveryInfoResponse].
  /// [scheduledDateTime] Scheduled date time.
  JobDeliveryInfoResponse({
    this.scheduledDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledDateTime': ?scheduledDateTime,
    };
  }

  factory JobDeliveryInfoResponse.fromMap(Map<String, dynamic> map) {
    return JobDeliveryInfoResponse(
      scheduledDateTime: map['scheduledDateTime'] == null ? null : map['scheduledDateTime'] as String,
    );
  }
}

