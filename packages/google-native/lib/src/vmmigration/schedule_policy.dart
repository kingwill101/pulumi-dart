// ignore_for_file: unused_element, unnecessary_cast


/// A policy for scheduling replications.
class SchedulePolicy {
  /// The idle duration between replication stages.
  final String? idleDuration;
  /// A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  final bool? skipOsAdaptation;

  /// Creates a new [SchedulePolicy].
  /// [idleDuration] The idle duration between replication stages.
  /// [skipOsAdaptation] A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  SchedulePolicy({
    this.idleDuration,
    this.skipOsAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleDuration': ?idleDuration,
      'skipOsAdaptation': ?skipOsAdaptation,
    };
  }

  factory SchedulePolicy.fromMap(Map<String, dynamic> map) {
    return SchedulePolicy(
      idleDuration: map['idleDuration'] == null ? null : map['idleDuration'] as String,
      skipOsAdaptation: map['skipOsAdaptation'] == null ? null : map['skipOsAdaptation'] as bool,
    );
  }
}

