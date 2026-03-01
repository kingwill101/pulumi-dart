// ignore_for_file: unused_element, unnecessary_cast


/// Group of signal definition assignments
class SignalAssignmentResponse {
  /// Signal definitions referenced by their names. All definitions are combined with an AND operator.
  final List<String> signalDefinitions;

  /// Creates a new [SignalAssignmentResponse].
  /// [signalDefinitions] Signal definitions referenced by their names. All definitions are combined with an AND operator.
  SignalAssignmentResponse({
    required this.signalDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signalDefinitions': signalDefinitions,
    };
  }

  factory SignalAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return SignalAssignmentResponse(
      signalDefinitions: (map['signalDefinitions'] as List).cast<String>(),
    );
  }
}

