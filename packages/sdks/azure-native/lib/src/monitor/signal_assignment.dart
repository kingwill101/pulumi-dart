// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Group of signal definition assignments
class SignalAssignment {
  /// Signal definitions referenced by their names. All definitions are combined with an AND operator.
  final pulumi.Input<List<String>> signalDefinitions;

  /// Creates a new [SignalAssignment].
  /// [signalDefinitions] Signal definitions referenced by their names. All definitions are combined with an AND operator.
  SignalAssignment({
    required this.signalDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signalDefinitions': signalDefinitions,
    };
  }

  factory SignalAssignment.fromMap(Map<String, dynamic> map) {
    return SignalAssignment(
      signalDefinitions: pulumi.Input.fromValue((map['signalDefinitions'] as List).cast<String>()),
    );
  }
}

