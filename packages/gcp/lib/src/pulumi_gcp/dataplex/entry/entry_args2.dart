// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entry_aspect/entry_aspect.dart';
import '../entry_entry_source/entry_entry_source.dart';

/// The set of arguments for Entry.
class EntryArgs2 {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  final Input<List<EntryAspect>>? aspects;

  /// The entry group id of the entry group the entry will be created in.
  final Input<String>? entryGroupId;

  /// The entry id of the entry.
  final Input<String>? entryId;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<EntryEntrySource>? entrySource;

  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  final Input<String> entryType;

  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  final Input<String>? fullyQualifiedName;

  /// The location where entry will be created.
  final Input<String>? location;

  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  final Input<String>? parentEntry;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  EntryArgs2({
    this.aspects,
    this.entryGroupId,
    this.entryId,
    this.entrySource,
    required this.entryType,
    this.fullyQualifiedName,
    this.location,
    this.parentEntry,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aspectsValue = aspects;
    if (aspectsValue != null) {
      map['aspects'] = Input.mapOptionalInputValue<List<EntryAspect>,
              List<Map<String, dynamic>>>(
          aspectsValue,
          (value) => Input.encodeList<EntryAspect, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final entryGroupIdValue = entryGroupId;
    if (entryGroupIdValue != null) {
      map['entryGroupId'] = entryGroupIdValue;
    }
    final entryIdValue = entryId;
    if (entryIdValue != null) {
      map['entryId'] = entryIdValue;
    }
    final entrySourceValue = entrySource;
    if (entrySourceValue != null) {
      map['entrySource'] =
          Input.mapOptionalInputValue<EntryEntrySource, Map<String, dynamic>>(
              entrySourceValue, (value) => value.toMap());
    }
    map['entryType'] = entryType;
    final fullyQualifiedNameValue = fullyQualifiedName;
    if (fullyQualifiedNameValue != null) {
      map['fullyQualifiedName'] = fullyQualifiedNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentEntryValue = parentEntry;
    if (parentEntryValue != null) {
      map['parentEntry'] = parentEntryValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntryArgs2.fromMap(Map<String, dynamic> map) {
    return EntryArgs2(
      aspects: Input.asOptionalInput<List<EntryAspect>>(map['aspects']),
      entryGroupId: Input.asOptionalInput<String>(map['entryGroupId']),
      entryId: Input.asOptionalInput<String>(map['entryId']),
      entrySource: Input.asOptionalInput<EntryEntrySource>(map['entrySource']),
      entryType: Input.asInput<String>(map['entryType']),
      fullyQualifiedName:
          Input.asOptionalInput<String>(map['fullyQualifiedName']),
      location: Input.asOptionalInput<String>(map['location']),
      parentEntry: Input.asOptionalInput<String>(map['parentEntry']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
