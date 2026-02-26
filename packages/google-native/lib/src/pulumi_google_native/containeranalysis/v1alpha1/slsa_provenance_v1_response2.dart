// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_response2.dart';
import 'run_details_response2.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1Response2 {
  final BuildDefinitionResponse2 buildDefinition;
  final RunDetailsResponse2 runDetails;

  SlsaProvenanceV1Response2({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildDefinition'] = buildDefinition.toMap();
    map['runDetails'] = runDetails.toMap();
    return map;
  }

  factory SlsaProvenanceV1Response2.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1Response2(
      buildDefinition: BuildDefinitionResponse2.fromMap(
          (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: RunDetailsResponse2.fromMap(
          (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
