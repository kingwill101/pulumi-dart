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
    return <String, dynamic>{'location': location};
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection(
      location: map['location'] as String,
    );
  }
}
