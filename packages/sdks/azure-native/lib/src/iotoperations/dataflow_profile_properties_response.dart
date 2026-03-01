// ignore_for_file: unused_element, unnecessary_cast

import 'profile_diagnostics_response.dart';

/// DataflowProfile Resource properties
class DataflowProfilePropertiesResponse {
  /// Spec defines the desired identities of NBC diagnostics settings.
  final ProfileDiagnosticsResponse? diagnostics;
  /// To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  final int? instanceCount;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [DataflowProfilePropertiesResponse].
  /// [diagnostics] Spec defines the desired identities of NBC diagnostics settings.
  /// [instanceCount] To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  /// [provisioningState] The status of the last operation.
  DataflowProfilePropertiesResponse({
    this.diagnostics,
    this.instanceCount,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'instanceCount': ?instanceCount,
      'provisioningState': provisioningState,
    };
  }

  factory DataflowProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowProfilePropertiesResponse(
      diagnostics: map['diagnostics'] == null ? null : ProfileDiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

