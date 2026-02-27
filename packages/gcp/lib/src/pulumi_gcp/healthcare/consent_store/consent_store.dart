import 'package:pulumi/pulumi.dart';
import 'consent_store_args.dart';

/// The Consent Management API is a tool for tracking user consents and the documentation associated with the consents.
///
///
/// To get more information about ConsentStore, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.consentStores)
/// * How-to Guides
/// * [Creating a Consent store](https://cloud.google.com/healthcare/docs/how-tos/consent)
///
/// ## Example Usage
///
/// ### Healthcare Consent Store Basic
///
///
///
/// ### Healthcare Consent Store Full
///
///
///
/// ### Healthcare Consent Store Iam
///
///
///
///
/// ## Import
///
/// ConsentStore can be imported using any of these accepted formats:
///
/// * `{{dataset}}/consentStores/{{name}}`
///
/// When using the `pulumi import` command, ConsentStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/consentStore:ConsentStore default {{dataset}}/consentStores/{{name}}
/// ```
class ConsentStore extends CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final Output<String> dataset;

  /// Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  late final Output<String?> defaultConsentTtl;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  late final Output<bool?> enableConsentCreateOnUpdate;

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
  late final Output<Map<String, String>?> labels;

  /// The name of this ConsentStore, for example:
  /// "consent1"
  late final Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  ConsentStore(
    String name, {
    ConsentStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/consentStore:ConsentStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.defaultConsentTtl = registerOutput<String?>('defaultConsentTtl');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableConsentCreateOnUpdate =
        registerOutput<bool?>('enableConsentCreateOnUpdate');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
