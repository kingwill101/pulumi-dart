// ignore_for_file: unused_element, unnecessary_cast


/// Condition contains details for one aspect of the current state of this API Resource.
class ConditionPatch {
  /// lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  final String? lastTransitionTime;
  /// message is a human readable message indicating details about the transition. This may be an empty string.
  final String? message;
  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final int? observedGeneration;
  /// reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  final String? reason;
  /// status of the condition, one of True, False, Unknown.
  final String? status;
  /// type of condition in CamelCase or in foo.example.com/CamelCase.
  final String? type;

  /// Creates a new [ConditionPatch].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  /// [message] message is a human readable message indicating details about the transition. This may be an empty string.
  /// [observedGeneration] observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  /// [status] status of the condition, one of True, False, Unknown.
  /// [type] type of condition in CamelCase or in foo.example.com/CamelCase.
  ConditionPatch({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'observedGeneration': ?observedGeneration,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ConditionPatch.fromMap(Map<String, dynamic> map) {
    return ConditionPatch(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

