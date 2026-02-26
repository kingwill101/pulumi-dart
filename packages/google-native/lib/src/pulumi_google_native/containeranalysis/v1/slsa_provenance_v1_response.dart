// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_response.dart';
import 'run_details_response.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1Response {
  final BuildDefinitionResponse buildDefinition;
  final RunDetailsResponse runDetails;

  SlsaProvenanceV1Response({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildDefinition'] = buildDefinition.toMap();
    map['runDetails'] = runDetails.toMap();
    return map;
  }

  factory SlsaProvenanceV1Response.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1Response(
      buildDefinition: BuildDefinitionResponse.fromMap(
          (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: RunDetailsResponse.fromMap(
          (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
