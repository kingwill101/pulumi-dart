// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_consent_store_healthcare_v1beta1_args_doc}
/// The set of arguments for ConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_consent_store_healthcare_v1beta1_args_doc}
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

  /// Creates a new [ConsentStoreHealthcareV1beta1Args].
  /// [consentStoreId] Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  /// [datasetId] Required.
  /// [defaultConsentTtl] Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// [enableConsentCreateOnUpdate] Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  /// [labels] Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  /// [location] Optional.
  /// [name] Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  /// [project] Optional.
  ConsentStoreHealthcareV1beta1Args({
    required String consentStoreId,
    required String datasetId,
    String? defaultConsentTtl,
    bool? enableConsentCreateOnUpdate,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
  }) : consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
       datasetId = pulumi.Input.asInput<String>(datasetId),
       defaultConsentTtl = pulumi.Input.asOptionalInput<String>(
         defaultConsentTtl,
       ),
       enableConsentCreateOnUpdate = pulumi.Input.asOptionalInput<bool>(
         enableConsentCreateOnUpdate,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'defaultConsentTtl': ?defaultConsentTtl,
      'enableConsentCreateOnUpdate': ?enableConsentCreateOnUpdate,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConsentStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConsentStoreHealthcareV1beta1Args(
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      defaultConsentTtl: map['defaultConsentTtl'] == null
          ? null
          : map['defaultConsentTtl'] as String,
      enableConsentCreateOnUpdate: map['enableConsentCreateOnUpdate'] == null
          ? null
          : map['enableConsentCreateOnUpdate'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
