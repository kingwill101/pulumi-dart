import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_artifact_args.dart';
import 'image_response.dart';
import 'signature_response.dart';

/// Creates a new Consent artifact in the parent consent store.
class ConsentArtifact extends pulumi.CustomResource {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  late final pulumi.Output<List<ImageResponse>> consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  late final pulumi.Output<String> consentContentVersion;
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;

  /// Optional. A signature from a guardian.
  late final pulumi.Output<SignatureResponse> guardianSignature;
  late final pulumi.Output<String> location;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;

  /// Optional. User's signature.
  late final pulumi.Output<SignatureResponse> userSignature;

  /// Optional. A signature from a witness.
  late final pulumi.Output<SignatureResponse> witnessSignature;

  /// Creates a new [ConsentArtifact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsentArtifact]. {@macro pulumi_healthcare_v1_consent_artifact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsentArtifact(
    String name, {
    ConsentArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:ConsentArtifact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.consentContentScreenshots =
        registerOutput<List<ImageResponse>>('consentContentScreenshots');
    this.consentContentVersion =
        registerOutput<String>('consentContentVersion');
    this.consentStoreId = registerOutput<String>('consentStoreId');
    this.datasetId = registerOutput<String>('datasetId');
    this.guardianSignature =
        registerOutput<SignatureResponse>('guardianSignature');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.userId = registerOutput<String>('userId');
    this.userSignature = registerOutput<SignatureResponse>('userSignature');
    this.witnessSignature =
        registerOutput<SignatureResponse>('witnessSignature');
  }
}
