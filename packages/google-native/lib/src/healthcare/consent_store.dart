import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_store_args.dart';

/// Creates a new consent store in the parent dataset. Attempting to create a consent store with the same ID as an existing store fails with an ALREADY_EXISTS error.
class ConsentStore extends pulumi.CustomResource {
  /// Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;

  /// Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  late final pulumi.Output<String> defaultConsentTtl;

  /// Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  late final pulumi.Output<bool> enableConsentCreateOnUpdate;

  /// Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [ConsentStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsentStore]. {@macro pulumi_healthcare_v1_consent_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsentStore(
    String name, {
    ConsentStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:healthcare/v1:ConsentStore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.datasetId = registerOutput<String>('datasetId');
    this.defaultConsentTtl = registerOutput<String>('defaultConsentTtl');
    this.enableConsentCreateOnUpdate = registerOutput<bool>(
      'enableConsentCreateOnUpdate',
    );
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
