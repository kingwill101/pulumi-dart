// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection {
  /// The location of the replica to apply asymmetric autoscaling options.
  final String location;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection].
  /// [location] The location of the replica to apply asymmetric autoscaling options.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection(
      location: map['location'] as String,
    );
  }
}
