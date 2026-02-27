// ignore_for_file: unused_element, unnecessary_cast

import 'build_definition_containeranalysis_v1beta1.dart';
import 'run_details_containeranalysis_v1beta1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ContaineranalysisV1beta1 {
  final BuildDefinitionContaineranalysisV1beta1? buildDefinition;
  final RunDetailsContaineranalysisV1beta1? runDetails;

  SlsaProvenanceV1ContaineranalysisV1beta1({
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

  factory SlsaProvenanceV1ContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SlsaProvenanceV1ContaineranalysisV1beta1(
      buildDefinition: map['buildDefinition'] == null
          ? null
          : BuildDefinitionContaineranalysisV1beta1.fromMap(
              (map['buildDefinition'] as Map).cast<String, dynamic>()),
      runDetails: map['runDetails'] == null
          ? null
          : RunDetailsContaineranalysisV1beta1.fromMap(
              (map['runDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
