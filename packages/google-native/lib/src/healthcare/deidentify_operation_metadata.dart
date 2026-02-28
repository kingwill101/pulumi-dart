// ignore_for_file: unused_element, unnecessary_cast

import 'fhir_output.dart';

/// Details about the work the de-identify operation performed.
class DeidentifyOperationMetadata {
  /// Details about the FHIR store to write the output to.
  final FhirOutput? fhirOutput;

  /// Creates a new [DeidentifyOperationMetadata].
  /// [fhirOutput] Details about the FHIR store to write the output to.
  DeidentifyOperationMetadata({
    this.fhirOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirOutput': ?fhirOutput == null ? null : fhirOutput!.toMap(),
    };
  }

  factory DeidentifyOperationMetadata.fromMap(Map<String, dynamic> map) {
    return DeidentifyOperationMetadata(
      fhirOutput: map['fhirOutput'] == null ? null : FhirOutput.fromMap((map['fhirOutput'] as Map).cast<String, dynamic>()),
    );
  }
}

