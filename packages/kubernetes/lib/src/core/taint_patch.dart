// ignore_for_file: unused_element, unnecessary_cast


/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
class TaintPatch {
  /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  final String? effect;
  /// Required. The taint key to be applied to a node.
  final String? key;
  /// TimeAdded represents the time at which the taint was added.
  final String? timeAdded;
  /// The taint value corresponding to the taint key.
  final String? value;

  /// Creates a new [TaintPatch].
  /// [effect] Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  /// [key] Required. The taint key to be applied to a node.
  /// [timeAdded] TimeAdded represents the time at which the taint was added.
  /// [value] The taint value corresponding to the taint key.
  TaintPatch({
    this.effect,
    this.key,
    this.timeAdded,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'timeAdded': ?timeAdded,
      'value': ?value,
    };
  }

  factory TaintPatch.fromMap(Map<String, dynamic> map) {
    return TaintPatch(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      timeAdded: map['timeAdded'] == null ? null : map['timeAdded'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

