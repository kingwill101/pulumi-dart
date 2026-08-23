// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Transition
class TransitionResponse {
  /// The storage class to which you want the object to transition.
  final pulumi.Input<String>? storageClass;
  /// Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  final pulumi.Input<String>? transitionDate;
  /// Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  final pulumi.Input<int>? transitionInDays;

  /// Creates a new [TransitionResponse].
  /// [storageClass] The storage class to which you want the object to transition.
  /// [transitionDate] Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  /// [transitionInDays] Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  const TransitionResponse({
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
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionDate: (() { final guardedValue = map['transitionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionInDays: (() { final guardedValue = map['transitionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
