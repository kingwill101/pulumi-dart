// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arg_response.dart';

/// Migration Wave Properties class.
class WavePropertiesResponse {
  /// Actual start date of the wave.
  final pulumi.Input<String> actualStartDate;
  /// ARG query and other details to create workloads within a wave
  final pulumi.Input<ArgResponse> arg;
  /// Description of the wave.
  final pulumi.Input<String>? description;
  /// Display Name of the wave.
  final pulumi.Input<String> displayName;
  /// Planned completion date of the wave.
  final pulumi.Input<String>? plannedCompletionDate;
  /// Planned start date of the wave.
  final pulumi.Input<String> plannedStartDate;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The current stage of the wave.
  final pulumi.Input<String> stage;
  /// The status of the wave.
  final pulumi.Input<String> status;

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
      'arg': pulumi.Input.mapInputValue<ArgResponse, Map<String, dynamic>>(arg, (value) => value.toMap()),
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
      actualStartDate: (map['actualStartDate'] as String).input(),
      arg: (ArgResponse.fromMap((map['arg'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      plannedCompletionDate: map['plannedCompletionDate'] == null ? null : (map['plannedCompletionDate']! as String).input(),
      plannedStartDate: (map['plannedStartDate'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      stage: (map['stage'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

