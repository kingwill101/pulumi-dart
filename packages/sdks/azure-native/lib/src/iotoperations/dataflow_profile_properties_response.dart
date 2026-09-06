// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_diagnostics_response.dart';

/// DataflowProfile Resource properties
class DataflowProfilePropertiesResponse {
  /// Spec defines the desired identities of NBC diagnostics settings.
  final pulumi.Input<ProfileDiagnosticsResponse?>? diagnostics;
  /// To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  final pulumi.Input<int?>? instanceCount;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DataflowProfilePropertiesResponse].
  /// [diagnostics] Spec defines the desired identities of NBC diagnostics settings.
  /// [instanceCount] To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  /// [provisioningState] The status of the last operation.
  DataflowProfilePropertiesResponse({
    this.diagnostics,
    pulumi.Input<int?>? instanceCount,
    required this.provisioningState,
  }) : instanceCount = instanceCount ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<ProfileDiagnosticsResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'provisioningState': provisioningState,
    };
  }

  factory DataflowProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowProfilePropertiesResponse(
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfileDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
