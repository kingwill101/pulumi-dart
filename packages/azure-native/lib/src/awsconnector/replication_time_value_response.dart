// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReplicationTimeValue
class ReplicationTimeValueResponse {
  /// Contains an integer specifying time in minutes.   Valid value: 15
  final int? minutes;

  /// Creates a new [ReplicationTimeValueResponse].
  /// [minutes] Contains an integer specifying time in minutes.   Valid value: 15
  ReplicationTimeValueResponse({
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': ?minutes,
    };
  }

  factory ReplicationTimeValueResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationTimeValueResponse(
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
    );
  }
}

