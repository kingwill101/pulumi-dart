// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_entry_source_ancestor/entry_entry_source_ancestor.dart';

class EntryEntrySource {
  /// Structure is documented below.
  final List<EntryEntrySourceAncestor>? ancestors;

  /// The time when the resource was created in the source system.
  final String? createTime;

  /// A description of the data resource. Maximum length is 2,000 characters.
  final String? description;

  /// A user-friendly display name. Maximum length is 500 characters.
  final String? displayName;

  /// User-defined labels. The maximum size of keys and values is 128 characters each.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;

  /// (Output)
  /// Location of the resource in the source system. You can search the entry by this location.
  /// By default, this should match the location of the entry group containing this entry.
  /// A different value allows capturing the source location for data external to Google Cloud.
  final String? location;

  /// The platform containing the source system. Maximum length is 64 characters.
  final String? platform;

  /// The name of the resource in the source system. Maximum length is 4,000 characters.
  final String? resource;

  /// The name of the source system. Maximum length is 64 characters.
  final String? system;

  /// The time when the resource was last updated in the source system.
  /// If the entry exists in the system and its EntrySource has updateTime populated,
  /// further updates to the EntrySource of the entry must provide incremental updates to its updateTime.
  final String? updateTime;

  EntryEntrySource({
    this.ancestors,
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.platform,
    this.resource,
    this.system,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ancestorsValue = ancestors;
    if (ancestorsValue != null) {
      map['ancestors'] = pulumi.Input.encodeList<EntryEntrySourceAncestor,
          Map<String, dynamic>>(ancestorsValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    final systemValue = system;
    if (systemValue != null) {
      map['system'] = systemValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory EntryEntrySource.fromMap(Map<String, dynamic> map) {
    return EntryEntrySource(
      ancestors: map['ancestors'] == null
          ? null
          : pulumi.Input.decodeList<EntryEntrySourceAncestor>(
              map['ancestors'],
              (value) => EntryEntrySourceAncestor.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      system: map['system'] == null ? null : map['system'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
