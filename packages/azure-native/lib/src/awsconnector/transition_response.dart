// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Transition
class TransitionResponse {
  /// The storage class to which you want the object to transition.
  final String? storageClass;
  /// Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  final String? transitionDate;
  /// Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  final int? transitionInDays;

  /// Creates a new [TransitionResponse].
  /// [storageClass] The storage class to which you want the object to transition.
  /// [transitionDate] Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  /// [transitionInDays] Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  TransitionResponse({
    this.storageClass,
    this.transitionDate,
    this.transitionInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageClass': ?storageClass,
      'transitionDate': ?transitionDate,
      'transitionInDays': ?transitionInDays,
    };
  }

  factory TransitionResponse.fromMap(Map<String, dynamic> map) {
    return TransitionResponse(
      storageClass: map['storageClass'] == null ? null : map['storageClass'] as String,
      transitionDate: map['transitionDate'] == null ? null : map['transitionDate'] as String,
      transitionInDays: map['transitionInDays'] == null ? null : map['transitionInDays'] as int,
    );
  }
}

