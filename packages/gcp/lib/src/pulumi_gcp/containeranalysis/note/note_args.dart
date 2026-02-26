// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../note_attestation_authority/note_attestation_authority.dart';
import '../note_related_url/note_related_url.dart';

/// The set of arguments for Note.
class NoteArgs {
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
  final Input<NoteAttestationAuthority> attestationAuthority;

  /// Time of expiration for this note. Leave empty if note does not expire.
  final Input<String>? expirationTime;

  /// A detailed description of the note
  final Input<String>? longDescription;

  /// The name of the note.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Names of other notes related to this note.
  final Input<List<String>>? relatedNoteNames;

  /// URLs associated with this note and related metadata.
  /// Structure is documented below.
  final Input<List<NoteRelatedUrl>>? relatedUrls;

  /// A one sentence description of the note.
  final Input<String>? shortDescription;

  NoteArgs({
    required this.attestationAuthority,
    this.expirationTime,
    this.longDescription,
    this.name,
    this.project,
    this.relatedNoteNames,
    this.relatedUrls,
    this.shortDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestationAuthority'] =
        Input.mapInputValue<NoteAttestationAuthority, Map<String, dynamic>>(
            attestationAuthority, (value) => value.toMap());
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final relatedNoteNamesValue = relatedNoteNames;
    if (relatedNoteNamesValue != null) {
      map['relatedNoteNames'] = relatedNoteNamesValue;
    }
    final relatedUrlsValue = relatedUrls;
    if (relatedUrlsValue != null) {
      map['relatedUrls'] = Input.mapOptionalInputValue<List<NoteRelatedUrl>,
              List<Map<String, dynamic>>>(
          relatedUrlsValue,
          (value) => Input.encodeList<NoteRelatedUrl, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    return map;
  }

  factory NoteArgs.fromMap(Map<String, dynamic> map) {
    return NoteArgs(
      attestationAuthority:
          Input.asInput<NoteAttestationAuthority>(map['attestationAuthority']),
      expirationTime: Input.asOptionalInput<String>(map['expirationTime']),
      longDescription: Input.asOptionalInput<String>(map['longDescription']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      relatedNoteNames:
          Input.asOptionalInput<List<String>>(map['relatedNoteNames']),
      relatedUrls:
          Input.asOptionalInput<List<NoteRelatedUrl>>(map['relatedUrls']),
      shortDescription: Input.asOptionalInput<String>(map['shortDescription']),
    );
  }
}
