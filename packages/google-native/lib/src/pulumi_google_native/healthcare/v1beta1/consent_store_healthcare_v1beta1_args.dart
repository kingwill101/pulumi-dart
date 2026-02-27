// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ConsentStore.
class ConsentStoreHealthcareV1beta1Args {
  /// Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;

  /// Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  final pulumi.Input<String>? defaultConsentTtl;

  /// Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  final pulumi.Input<bool>? enableConsentCreateOnUpdate;

  /// Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  ConsentStoreHealthcareV1beta1Args({
    required this.consentStoreId,
    required this.datasetId,
    this.defaultConsentTtl,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    final defaultConsentTtlValue = defaultConsentTtl;
    if (defaultConsentTtlValue != null) {
      map['defaultConsentTtl'] = defaultConsentTtlValue;
    }
    final enableConsentCreateOnUpdateValue = enableConsentCreateOnUpdate;
    if (enableConsentCreateOnUpdateValue != null) {
      map['enableConsentCreateOnUpdate'] = enableConsentCreateOnUpdateValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConsentStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConsentStoreHealthcareV1beta1Args(
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      defaultConsentTtl:
          pulumi.Input.asOptionalInput<String>(map['defaultConsentTtl']),
      enableConsentCreateOnUpdate: pulumi.Input.asOptionalInput<bool>(
          map['enableConsentCreateOnUpdate']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
