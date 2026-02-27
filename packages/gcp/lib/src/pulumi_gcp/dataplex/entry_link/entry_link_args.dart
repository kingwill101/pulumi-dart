// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_link_entry_reference/entry_link_entry_reference.dart';

/// The set of arguments for EntryLink.
class EntryLinkArgs {
  /// The id of the entry group this entry link is in.
  final pulumi.Input<String> entryGroupId;

  /// The id of the entry link to create.
  final pulumi.Input<String> entryLinkId;

  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  final pulumi.Input<String> entryLinkType;

  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkEntryReference>> entryReferences;

  /// The location for the entry.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  EntryLinkArgs({
    required this.entryGroupId,
    required this.entryLinkId,
    required this.entryLinkType,
    required this.entryReferences,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['entryLinkId'] = entryLinkId;
    map['entryLinkType'] = entryLinkType;
    map['entryReferences'] = pulumi.Input.mapInputValue<
            List<EntryLinkEntryReference>, List<Map<String, dynamic>>>(
        entryReferences,
        (value) => pulumi.Input.encodeList<EntryLinkEntryReference,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntryLinkArgs.fromMap(Map<String, dynamic> map) {
    return EntryLinkArgs(
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      entryLinkId: pulumi.Input.asInput<String>(map['entryLinkId']),
      entryLinkType: pulumi.Input.asInput<String>(map['entryLinkType']),
      entryReferences: pulumi.Input.asInput<List<EntryLinkEntryReference>>(
          map['entryReferences']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
