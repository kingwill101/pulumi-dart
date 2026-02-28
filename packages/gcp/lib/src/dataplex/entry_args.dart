// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_aspect.dart';
import 'entry_entry_source.dart';

/// {@template pulumi_dataplex_entry_entry_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_entry_args_doc}
class EntryArgs {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  final pulumi.Input<List<EntryAspect>>? aspects;
  /// The entry group id of the entry group the entry will be created in.
  final pulumi.Input<String>? entryGroupId;
  /// The entry id of the entry.
  final pulumi.Input<String>? entryId;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EntryEntrySource>? entrySource;
  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  final pulumi.Input<String> entryType;
  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  final pulumi.Input<String>? fullyQualifiedName;
  /// The location where entry will be created.
  final pulumi.Input<String>? location;
  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  final pulumi.Input<String>? parentEntry;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntryArgs].
  /// [aspects] The aspects that are attached to the entry.
  /// [entryGroupId] The entry group id of the entry group the entry will be created in.
  /// [entryId] The entry id of the entry.
  /// [entrySource] A nested object resource.
  /// [entryType] The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  /// [fullyQualifiedName] A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// [location] The location where entry will be created.
  /// [parentEntry] The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// [project] The ID of the project in which the resource belongs.
  EntryArgs({
    List<EntryAspect>? aspects,
    String? entryGroupId,
    String? entryId,
    EntryEntrySource? entrySource,
    required String entryType,
    String? fullyQualifiedName,
    String? location,
    String? parentEntry,
    String? project,
  }) :
      aspects = pulumi.Input.asOptionalInput<List<EntryAspect>>(aspects),
      entryGroupId = pulumi.Input.asOptionalInput<String>(entryGroupId),
      entryId = pulumi.Input.asOptionalInput<String>(entryId),
      entrySource = pulumi.Input.asOptionalInput<EntryEntrySource>(entrySource),
      entryType = pulumi.Input.asInput<String>(entryType),
      fullyQualifiedName = pulumi.Input.asOptionalInput<String>(fullyQualifiedName),
      location = pulumi.Input.asOptionalInput<String>(location),
      parentEntry = pulumi.Input.asOptionalInput<String>(parentEntry),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspects': ?pulumi.Input.mapOptionalInputValue<List<EntryAspect>, List<Map<String, dynamic>>>(aspects, (value) => pulumi.Input.encodeList<EntryAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryGroupId': ?entryGroupId,
      'entryId': ?entryId,
      'entrySource': ?pulumi.Input.mapOptionalInputValue<EntryEntrySource, Map<String, dynamic>>(entrySource, (value) => value.toMap()),
      'entryType': entryType,
      'fullyQualifiedName': ?fullyQualifiedName,
      'location': ?location,
      'parentEntry': ?parentEntry,
      'project': ?project,
    };
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      aspects: map['aspects'] == null ? null : pulumi.Input.decodeList<EntryAspect>(map['aspects'], (value) => EntryAspect.fromMap((value as Map).cast<String, dynamic>())),
      entryGroupId: map['entryGroupId'] == null ? null : map['entryGroupId'] as String,
      entryId: map['entryId'] == null ? null : map['entryId'] as String,
      entrySource: map['entrySource'] == null ? null : EntryEntrySource.fromMap((map['entrySource'] as Map).cast<String, dynamic>()),
      entryType: map['entryType'] as String,
      fullyQualifiedName: map['fullyQualifiedName'] == null ? null : map['fullyQualifiedName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      parentEntry: map['parentEntry'] == null ? null : map['parentEntry'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

