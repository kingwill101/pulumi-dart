import 'package:pulumi/pulumi.dart';
import 'consent_artifact_args.dart';
import 'image_response.dart';
import 'signature_response3.dart';

/// Creates a new Consent artifact in the parent consent store.
class ConsentArtifact extends CustomResource {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  late final Output<List<ImageResponse>> consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  late final Output<String> consentContentVersion;
  late final Output<String> consentStoreId;
  late final Output<String> datasetId;

  /// Optional. A signature from a guardian.
  late final Output<SignatureResponse3> guardianSignature;
  late final Output<String> location;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  late final Output<Map<String, String>> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  late final Output<String> name;
  late final Output<String> project;

  /// User's UUID provided by the client.
  late final Output<String> userId;

  /// Optional. User's signature.
  late final Output<SignatureResponse3> userSignature;

  /// Optional. A signature from a witness.
  late final Output<SignatureResponse3> witnessSignature;

  ConsentArtifact(
    String name, {
    ConsentArtifactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:ConsentArtifact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consentContentScreenshots =
        Output.createUnknown<List<ImageResponse>>();
    this.consentContentVersion = Output.createUnknown<String>();
    this.consentStoreId = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.guardianSignature = Output.createUnknown<SignatureResponse3>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.userId = Output.createUnknown<String>();
    this.userSignature = Output.createUnknown<SignatureResponse3>();
    this.witnessSignature = Output.createUnknown<SignatureResponse3>();
  }
}
