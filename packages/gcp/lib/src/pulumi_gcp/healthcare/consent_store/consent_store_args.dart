// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConsentStore.
class ConsentStoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final Input<String> dataset;

  /// Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final Input<String>? defaultConsentTtl;

  /// If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  final Input<bool>? enableConsentCreateOnUpdate;

  /// User-supplied key-value pairs used to organize Consent stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}`
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of this ConsentStore, for example:
  /// "consent1"
  final Input<String>? name;

  ConsentStoreArgs({
    required this.dataset,
    this.defaultConsentTtl,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ConsentStoreArgs.fromMap(Map<String, dynamic> map) {
    return ConsentStoreArgs(
      dataset: Input.asInput<String>(map['dataset']),
      defaultConsentTtl:
          Input.asOptionalInput<String>(map['defaultConsentTtl']),
      enableConsentCreateOnUpdate:
          Input.asOptionalInput<bool>(map['enableConsentCreateOnUpdate']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
