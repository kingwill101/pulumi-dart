// ignore_for_file: unused_element, unnecessary_cast

import 'arg.dart';

/// Migration Wave Properties class.
class WaveProperties {
  /// ARG query and other details to create workloads within a wave
  final Arg arg;
  /// Description of the wave.
  final String? description;
  /// Display Name of the wave.
  final String displayName;
  /// Planned completion date of the wave.
  final String? plannedCompletionDate;
  /// Planned start date of the wave.
  final String plannedStartDate;

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
      'arg': arg.toMap(),
      'description': ?description,
      'displayName': displayName,
      'plannedCompletionDate': ?plannedCompletionDate,
      'plannedStartDate': plannedStartDate,
    };
  }

  factory WaveProperties.fromMap(Map<String, dynamic> map) {
    return WaveProperties(
      arg: Arg.fromMap((map['arg'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      plannedCompletionDate: map['plannedCompletionDate'] == null ? null : map['plannedCompletionDate'] as String,
      plannedStartDate: map['plannedStartDate'] as String,
    );
  }
}

