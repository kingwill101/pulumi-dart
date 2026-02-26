// ignore_for_file: unused_element, unnecessary_cast

import 'sbomstatus_sbom_state.dart';

/// The status of an SBOM generation.
class SBOMStatus {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String? error;

  /// The progress of the SBOM generation.
  final SBOMStatusSbomState? sbomState;

  SBOMStatus({
    this.error,
    this.sbomState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorValue = error;
    if (errorValue != null) {
      map['error'] = errorValue;
    }
    final sbomStateValue = sbomState;
    if (sbomStateValue != null) {
      map['sbomState'] = sbomStateValue.value;
    }
    return map;
  }

  factory SBOMStatus.fromMap(Map<String, dynamic> map) {
    return SBOMStatus(
      error: map['error'] == null ? null : map['error'] as String,
      sbomState: map['sbomState'] == null
          ? null
          : SBOMStatusSbomState.fromValue(map['sbomState'] as String),
    );
  }
}
