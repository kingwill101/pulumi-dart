import 'package:pulumi/pulumi.dart';
import '../note_attestation_authority/note_attestation_authority.dart';
import '../note_related_url/note_related_url.dart';
import 'note_args.dart';

/// A Container Analysis note is a high-level piece of metadata that
/// describes a type of analysis that can be done for a resource.
///
///
/// To get more information about Note, see:
///
/// * [API documentation](https://cloud.google.com/container-analysis/api/reference/rest/)
/// * How-to Guides
/// * [Creating Attestations (Occurrences)](https://cloud.google.com/binary-authorization/docs/making-attestations)
/// * [Official Documentation](https://cloud.google.com/container-analysis/)
///
/// ## Example Usage
///
/// ### Container Analysis Note Basic
///
///
///
/// ### Container Analysis Note Attestation Full
///
///
///
///
/// ## Import
///
/// Note can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/notes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Note can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default projects/{{project}}/notes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default {{name}}
/// ```
class Note extends CustomResource {
  /// Note kind that represents a logical attestation "role" or "authority".
  /// For example, an organization might have one AttestationAuthority for
  /// "QA" and one for "build". This Note is intended to act strictly as a
  /// grouping mechanism for the attached Occurrences (Attestations). This
  /// grouping mechanism also provides a security boundary, since IAM ACLs
  /// gate the ability for a principle to attach an Occurrence to a given
  /// Note. It also provides a single point of lookup to find all attached
  /// Attestation Occurrences, even if they don't all live in the same
  /// project.
  /// Structure is documented below.
  late final Output<NoteAttestationAuthority> attestationAuthority;

  /// The time this note was created.
  late final Output<String> createTime;

  /// Time of expiration for this note. Leave empty if note does not expire.
  late final Output<String?> expirationTime;

  /// The type of analysis this note describes
  late final Output<String> kind;

  /// A detailed description of the note
  late final Output<String?> longDescription;

  /// The name of the note.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Names of other notes related to this note.
  late final Output<List<String>?> relatedNoteNames;

  /// URLs associated with this note and related metadata.
  /// Structure is documented below.
  late final Output<List<NoteRelatedUrl>?> relatedUrls;

  /// A one sentence description of the note.
  late final Output<String?> shortDescription;

  /// The time this note was last updated.
  late final Output<String> updateTime;

  Note(
    String name, {
    NoteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:containeranalysis/note:Note',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestationAuthority =
        registerOutput<NoteAttestationAuthority>('attestationAuthority');
    this.createTime = registerOutput<String>('createTime');
    this.expirationTime = registerOutput<String?>('expirationTime');
    this.kind = registerOutput<String>('kind');
    this.longDescription = registerOutput<String?>('longDescription');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.relatedNoteNames = registerOutput<List<String>?>('relatedNoteNames');
    this.relatedUrls = registerOutput<List<NoteRelatedUrl>?>('relatedUrls');
    this.shortDescription = registerOutput<String?>('shortDescription');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
