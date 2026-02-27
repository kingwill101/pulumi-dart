// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_response_containeranalysis_v1beta1.dart';
import 'run_details_response_containeranalysis_v1beta1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ResponseContaineranalysisV1beta1 {
  final BuildDefinitionResponseContaineranalysisV1beta1 buildDefinition;
  final RunDetailsResponseContaineranalysisV1beta1 runDetails;

  SlsaProvenanceV1ResponseContaineranalysisV1beta1({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildDefinition'] = buildDefinition.toMap();
    map['runDetails'] = runDetails.toMap();
    return map;
  }

  factory SlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SlsaProvenanceV1ResponseContaineranalysisV1beta1(
      buildDefinition: BuildDefinitionResponseContaineranalysisV1beta1.fromMap(
          (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: RunDetailsResponseContaineranalysisV1beta1.fromMap(
          (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
