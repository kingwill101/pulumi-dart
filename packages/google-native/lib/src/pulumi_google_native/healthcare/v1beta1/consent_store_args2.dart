// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConsentStore.
class ConsentStoreArgs2 {
  /// Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  final Input<String> consentStoreId;
  final Input<String> datasetId;

  /// Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  final Input<String>? defaultConsentTtl;

  /// Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  final Input<bool>? enableConsentCreateOnUpdate;

  /// Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  final Input<String>? name;
  final Input<String>? project;

  ConsentStoreArgs2({
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

  factory ConsentStoreArgs2.fromMap(Map<String, dynamic> map) {
    return ConsentStoreArgs2(
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      defaultConsentTtl:
          Input.asOptionalInput<String>(map['defaultConsentTtl']),
      enableConsentCreateOnUpdate:
          Input.asOptionalInput<bool>(map['enableConsentCreateOnUpdate']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
