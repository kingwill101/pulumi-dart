// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_diagnostics.dart';

/// DataflowProfile Resource properties
class DataflowProfileProperties {
  /// Spec defines the desired identities of NBC diagnostics settings.
  final pulumi.Input<ProfileDiagnostics>? diagnostics;
  /// To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  final pulumi.Input<int>? instanceCount;

  /// Creates a new [DataflowProfileProperties].
  /// [diagnostics] Spec defines the desired identities of NBC diagnostics settings.
  /// [instanceCount] To manually scale the dataflow profile, specify the maximum number of instances you want to run.
  const DataflowProfileProperties({
    this.diagnostics,
    this.instanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<ProfileDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
    };
  }

  factory DataflowProfileProperties.fromMap(Map<String, dynamic> map) {
    return DataflowProfileProperties(
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfileDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
