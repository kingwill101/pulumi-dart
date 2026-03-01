// ignore_for_file: unused_element, unnecessary_cast

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection {
  /// The location of the replica to apply asymmetric autoscaling options.
  final String location;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection].
  /// [location] The location of the replica to apply asymmetric autoscaling options.
  InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location};
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection(
      location: map['location'] as String,
    );
  }
}
