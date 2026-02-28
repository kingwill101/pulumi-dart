// ignore_for_file: unused_element, unnecessary_cast


/// A policy for scheduling replications.
class SchedulePolicyResponseVmmigrationV1alpha1 {
  /// The idle duration between replication stages.
  final String idleDuration;
  /// A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  final bool skipOsAdaptation;

  /// Creates a new [SchedulePolicyResponseVmmigrationV1alpha1].
  /// [idleDuration] The idle duration between replication stages.
  /// [skipOsAdaptation] A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  SchedulePolicyResponseVmmigrationV1alpha1({
    required this.idleDuration,
    required this.skipOsAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleDuration': idleDuration,
      'skipOsAdaptation': skipOsAdaptation,
    };
  }

  factory SchedulePolicyResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return SchedulePolicyResponseVmmigrationV1alpha1(
      idleDuration: map['idleDuration'] as String,
      skipOsAdaptation: map['skipOsAdaptation'] as bool,
    );
  }
}

