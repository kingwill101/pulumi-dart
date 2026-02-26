// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_response3.dart';
import 'run_details_response3.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1Response3 {
  final BuildDefinitionResponse3 buildDefinition;
  final RunDetailsResponse3 runDetails;

  SlsaProvenanceV1Response3({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildDefinition'] = buildDefinition.toMap();
    map['runDetails'] = runDetails.toMap();
    return map;
  }

  factory SlsaProvenanceV1Response3.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1Response3(
      buildDefinition: BuildDefinitionResponse3.fromMap(
          (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: RunDetailsResponse3.fromMap(
          (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
