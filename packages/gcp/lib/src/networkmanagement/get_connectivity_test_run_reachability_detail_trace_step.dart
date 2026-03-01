// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestRunReachabilityDetailTraceStep {
  /// (Output)
  /// If this step leads to the final state Drop.
  final bool causesDrop;

  /// (Output)
  /// Description of the connectivity test step.
  final String description;

  /// (Output)
  /// Project ID of the connectivity test step.
  final String projectId;

  /// (Output)
  /// State of the connectivity test step.
  final String state;

  /// Creates a new [GetConnectivityTestRunReachabilityDetailTraceStep].
  /// [causesDrop] (Output)
  /// [description] (Output)
  /// [projectId] (Output)
  /// [state] (Output)
  GetConnectivityTestRunReachabilityDetailTraceStep({
    required this.causesDrop,
    required this.description,
    required this.projectId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'causesDrop': causesDrop,
      'description': description,
      'projectId': projectId,
      'state': state,
    };
  }

  factory GetConnectivityTestRunReachabilityDetailTraceStep.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestRunReachabilityDetailTraceStep(
      causesDrop: map['causesDrop'] as bool,
      description: map['description'] as String,
      projectId: map['projectId'] as String,
      state: map['state'] as String,
    );
  }
}
