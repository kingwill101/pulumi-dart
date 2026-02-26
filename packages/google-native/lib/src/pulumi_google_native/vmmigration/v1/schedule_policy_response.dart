// ignore_for_file: unused_element, unnecessary_cast

/// A policy for scheduling replications.
class SchedulePolicyResponse {
  /// The idle duration between replication stages.
  final String idleDuration;

  /// A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  final bool skipOsAdaptation;

  SchedulePolicyResponse({
    required this.idleDuration,
    required this.skipOsAdaptation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleDuration'] = idleDuration;
    map['skipOsAdaptation'] = skipOsAdaptation;
    return map;
  }

  factory SchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SchedulePolicyResponse(
      idleDuration: map['idleDuration'] as String,
      skipOsAdaptation: map['skipOsAdaptation'] as bool,
    );
  }
}
