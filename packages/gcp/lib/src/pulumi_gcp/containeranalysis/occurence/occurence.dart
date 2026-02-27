import 'package:pulumi/pulumi.dart';
import '../occurence_attestation/occurence_attestation.dart';
import 'occurence_args.dart';

/// An occurrence is an instance of a Note, or type of analysis that
/// can be done for a resource.
///
///
/// To get more information about Occurrence, see:
///
/// * [API documentation](https://cloud.google.com/container-analysis/api/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/container-analysis/)
///
/// ## Example Usage
///
/// ### Container Analysis Occurrence Kms
///
///
///
///
/// ## Import
///
/// Occurrence can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/occurrences/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Occurrence can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default projects/{{project}}/occurrences/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default {{name}}
/// ```
class Occurence extends CustomResource {
  /// Occurrence that represents a single "attestation". The authenticity
  /// of an attestation can be verified using the attached signature.
  /// If the verifier trusts the public key of the signer, then verifying
  /// the signature is sufficient to establish trust. In this circumstance,
  /// the authority to which this attestation is attached is primarily
  /// useful for lookup (how to find this attestation if you already
  /// know the authority and artifact to be verified) and intent (for
  /// which authority this attestation was intended to sign.
  /// Structure is documented below.
  late final Output<OccurenceAttestation> attestation;

  /// The time when the repository was created.
  late final Output<String> createTime;

  /// The note kind which explicitly denotes which of the occurrence
  /// details are specified. This field can be used as a filter in list
  /// requests.
  late final Output<String> kind;

  /// The name of the occurrence.
  late final Output<String> name;

  /// The analysis note associated with this occurrence, in the form of
  /// projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
  /// filter in list requests.
  late final Output<String> noteName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A description of actions that can be taken to remedy the note.
  late final Output<String?> remediation;

  /// Required. Immutable. A URI that represents the resource for which
  /// the occurrence applies. For example,
  /// https://gcr.io/project/image@sha256:123abc for a Docker image.
  late final Output<String> resourceUri;

  /// The time when the repository was last updated.
  late final Output<String> updateTime;

  Occurence(
    String name, {
    OccurenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:containeranalysis/occurence:Occurence',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation = registerOutput<OccurenceAttestation>('attestation');
    this.createTime = registerOutput<String>('createTime');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.noteName = registerOutput<String>('noteName');
    this.project = registerOutput<String>('project');
    this.remediation = registerOutput<String?>('remediation');
    this.resourceUri = registerOutput<String>('resourceUri');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
