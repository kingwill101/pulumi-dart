// ignore_for_file: unused_element, unnecessary_cast

import 'fhir_output_response.dart';

/// Details about the work the de-identify operation performed.
class DeidentifyOperationMetadataResponse {
  /// Details about the FHIR store to write the output to.
  final FhirOutputResponse fhirOutput;

  DeidentifyOperationMetadataResponse({
    required this.fhirOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fhirOutput'] = fhirOutput.toMap();
    return map;
  }

  factory DeidentifyOperationMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return DeidentifyOperationMetadataResponse(
      fhirOutput: FhirOutputResponse.fromMap(
          (map['fhirOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
