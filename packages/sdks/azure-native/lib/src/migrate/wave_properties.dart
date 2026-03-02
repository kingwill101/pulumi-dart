// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arg.dart';

/// Migration Wave Properties class.
class WaveProperties {
  /// ARG query and other details to create workloads within a wave
  final pulumi.Input<Arg> arg;
  /// Description of the wave.
  final pulumi.Input<String>? description;
  /// Display Name of the wave.
  final pulumi.Input<String> displayName;
  /// Planned completion date of the wave.
  final pulumi.Input<String>? plannedCompletionDate;
  /// Planned start date of the wave.
  final pulumi.Input<String> plannedStartDate;

  /// Creates a new [WaveProperties].
  /// [arg] ARG query and other details to create workloads within a wave
  /// [description] Description of the wave.
  /// [displayName] Display Name of the wave.
  /// [plannedCompletionDate] Planned completion date of the wave.
  /// [plannedStartDate] Planned start date of the wave.
  WaveProperties({
    required this.arg,
    this.description,
    required this.displayName,
    this.plannedCompletionDate,
    required this.plannedStartDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arg': pulumi.Input.mapInputValue<Arg, Map<String, dynamic>>(arg, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'plannedCompletionDate': ?plannedCompletionDate,
      'plannedStartDate': plannedStartDate,
    };
  }

  factory WaveProperties.fromMap(Map<String, dynamic> map) {
    return WaveProperties(
      arg: (Arg.fromMap((map['arg'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      plannedCompletionDate: map['plannedCompletionDate'] == null ? null : (map['plannedCompletionDate']! as String).input(),
      plannedStartDate: (map['plannedStartDate'] as String).input(),
    );
  }
}

