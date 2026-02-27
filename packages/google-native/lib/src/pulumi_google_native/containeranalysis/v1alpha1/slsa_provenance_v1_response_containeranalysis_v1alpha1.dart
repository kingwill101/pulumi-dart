// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_response_containeranalysis_v1alpha1.dart';
import 'run_details_response_containeranalysis_v1alpha1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ResponseContaineranalysisV1alpha1 {
  final BuildDefinitionResponseContaineranalysisV1alpha1 buildDefinition;
  final RunDetailsResponseContaineranalysisV1alpha1 runDetails;

  SlsaProvenanceV1ResponseContaineranalysisV1alpha1({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildDefinition'] = buildDefinition.toMap();
    map['runDetails'] = runDetails.toMap();
    return map;
  }

  factory SlsaProvenanceV1ResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SlsaProvenanceV1ResponseContaineranalysisV1alpha1(
      buildDefinition: BuildDefinitionResponseContaineranalysisV1alpha1.fromMap(
          (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: RunDetailsResponseContaineranalysisV1alpha1.fromMap(
          (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
