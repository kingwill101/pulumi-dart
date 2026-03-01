// ignore_for_file: unused_element, unnecessary_cast

class FhirStoreValidationConfig {
  /// Whether to disable FHIRPath validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final bool? disableFhirpathValidation;

  /// Whether to disable profile validation for this FHIR store. The default value is false. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.
  final bool? disableProfileValidation;

  /// Whether to disable reference type validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final bool? disableReferenceTypeValidation;

  /// Whether to disable required fields validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  final bool? disableRequiredFieldValidation;

  /// A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation.
  /// When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.
  /// For example, to use the US Core profiles for validation, set enabledImplementationGuides to ["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]. If enabledImplementationGuides is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the global property of one of the enabled ImplementationGuides.
  /// The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported:
  /// - min/max
  /// - minValue/maxValue
  /// - maxLength
  /// - type
  /// - fixed[x]
  /// - pattern[x] on simple types
  /// - slicing, when using "value" as the discriminator type
  final List<String>? enabledImplementationGuides;

  /// Creates a new [FhirStoreValidationConfig].
  /// [disableFhirpathValidation] Whether to disable FHIRPath validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against FHIRPath requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [disableProfileValidation] Whether to disable profile validation for this FHIR store. The default value is false. Set this to true to disable checking incoming resources for conformance against structure definitions in this FHIR store.
  /// [disableReferenceTypeValidation] Whether to disable reference type validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against reference type requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [disableRequiredFieldValidation] Whether to disable required fields validation for incoming resources. The default value is false. Set this to true to disable checking incoming resources for conformance against required fields requirement defined in the FHIR specification. This property only affects resource types that do not have profiles configured for them, any rules in enabled implementation guides will still be enforced.
  /// [enabledImplementationGuides] A list of implementation guide URLs in this FHIR store that are used to configure the profiles to use for validation.
  FhirStoreValidationConfig({
    this.disableFhirpathValidation,
    this.disableProfileValidation,
    this.disableReferenceTypeValidation,
    this.disableRequiredFieldValidation,
    this.enabledImplementationGuides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableFhirpathValidation': ?disableFhirpathValidation,
      'disableProfileValidation': ?disableProfileValidation,
      'disableReferenceTypeValidation': ?disableReferenceTypeValidation,
      'disableRequiredFieldValidation': ?disableRequiredFieldValidation,
      'enabledImplementationGuides': ?enabledImplementationGuides,
    };
  }

  factory FhirStoreValidationConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreValidationConfig(
      disableFhirpathValidation: map['disableFhirpathValidation'] == null
          ? null
          : map['disableFhirpathValidation'] as bool,
      disableProfileValidation: map['disableProfileValidation'] == null
          ? null
          : map['disableProfileValidation'] as bool,
      disableReferenceTypeValidation:
          map['disableReferenceTypeValidation'] == null
          ? null
          : map['disableReferenceTypeValidation'] as bool,
      disableRequiredFieldValidation:
          map['disableRequiredFieldValidation'] == null
          ? null
          : map['disableRequiredFieldValidation'] as bool,
      enabledImplementationGuides: map['enabledImplementationGuides'] == null
          ? null
          : (map['enabledImplementationGuides'] as List).cast<String>(),
    );
  }
}
