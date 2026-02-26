// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition2.dart';
import 'run_details2.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV2 {
  final BuildDefinition2? buildDefinition;
  final RunDetails2? runDetails;

  SlsaProvenanceV2({
    this.buildDefinition,
    this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildDefinitionValue = buildDefinition;
    if (buildDefinitionValue != null) {
      map['buildDefinition'] = buildDefinitionValue.toMap();
    }
    final runDetailsValue = runDetails;
    if (runDetailsValue != null) {
      map['runDetails'] = runDetailsValue.toMap();
    }
    return map;
  }

  factory SlsaProvenanceV2.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV2(
      buildDefinition: map['buildDefinition'] == null
          ? null
          : BuildDefinition2.fromMap(
              (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: map['runDetails'] == null
          ? null
          : RunDetails2.fromMap(
              (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
