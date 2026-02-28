// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConsentStore.
class GetConsentStoreResult {
  /// Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  final String defaultConsentTtl;
  /// Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  final bool enableConsentCreateOnUpdate;
  /// Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  final Map<String, String> labels;
  /// Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  final String name;

  /// Creates a new [GetConsentStoreResult].
  /// [defaultConsentTtl] Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// [enableConsentCreateOnUpdate] Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  /// [labels] Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  /// [name] Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  GetConsentStoreResult({
    required this.defaultConsentTtl,
    required this.enableConsentCreateOnUpdate,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConsentTtl': defaultConsentTtl,
      'enableConsentCreateOnUpdate': enableConsentCreateOnUpdate,
      'labels': labels,
      'name': name,
    };
  }

  factory GetConsentStoreResult.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreResult(
      defaultConsentTtl: map['defaultConsentTtl'] as String,
      enableConsentCreateOnUpdate: map['enableConsentCreateOnUpdate'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}

