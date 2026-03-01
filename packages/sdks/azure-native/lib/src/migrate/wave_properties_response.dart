// ignore_for_file: unused_element, unnecessary_cast

import 'arg_response.dart';

/// Migration Wave Properties class.
class WavePropertiesResponse {
  /// Actual start date of the wave.
  final String actualStartDate;
  /// ARG query and other details to create workloads within a wave
  final ArgResponse arg;
  /// Description of the wave.
  final String? description;
  /// Display Name of the wave.
  final String displayName;
  /// Planned completion date of the wave.
  final String? plannedCompletionDate;
  /// Planned start date of the wave.
  final String plannedStartDate;
  /// The status of the last operation.
  final String provisioningState;
  /// The current stage of the wave.
  final String stage;
  /// The status of the wave.
  final String status;

  /// Creates a new [WavePropertiesResponse].
  /// [actualStartDate] Actual start date of the wave.
  /// [arg] ARG query and other details to create workloads within a wave
  /// [description] Description of the wave.
  /// [displayName] Display Name of the wave.
  /// [plannedCompletionDate] Planned completion date of the wave.
  /// [plannedStartDate] Planned start date of the wave.
  /// [provisioningState] The status of the last operation.
  /// [stage] The current stage of the wave.
  /// [status] The status of the wave.
  WavePropertiesResponse({
    required this.actualStartDate,
    required this.arg,
    this.description,
    required this.displayName,
    this.plannedCompletionDate,
    required this.plannedStartDate,
    required this.provisioningState,
    required this.stage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualStartDate': actualStartDate,
      'arg': arg.toMap(),
      'description': ?description,
      'displayName': displayName,
      'plannedCompletionDate': ?plannedCompletionDate,
      'plannedStartDate': plannedStartDate,
      'provisioningState': provisioningState,
      'stage': stage,
      'status': status,
    };
  }

  factory WavePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WavePropertiesResponse(
      actualStartDate: map['actualStartDate'] as String,
      arg: ArgResponse.fromMap((map['arg'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      plannedCompletionDate: map['plannedCompletionDate'] == null ? null : map['plannedCompletionDate'] as String,
      plannedStartDate: map['plannedStartDate'] as String,
      provisioningState: map['provisioningState'] as String,
      stage: map['stage'] as String,
      status: map['status'] as String,
    );
  }
}

