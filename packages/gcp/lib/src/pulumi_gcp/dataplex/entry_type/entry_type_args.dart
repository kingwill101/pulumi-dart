// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_type_required_aspect/entry_type_required_aspect.dart';

/// The set of arguments for EntryType.
class EntryTypeArgs {
  /// Description of the EntryType.
  final pulumi.Input<String>? description;

  /// User friendly display name.
  final pulumi.Input<String>? displayName;

  /// The entry type id of the entry type.
  final pulumi.Input<String>? entryTypeId;

  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where entry type will be created in.
  final pulumi.Input<String>? location;

  /// The platform that Entries of this type belongs to.
  final pulumi.Input<String>? platform;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// AspectInfo for the entry type.
  /// Structure is documented below.
  final pulumi.Input<List<EntryTypeRequiredAspect>>? requiredAspects;

  /// The system that Entries of this type belongs to.
  final pulumi.Input<String>? system;

  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  final pulumi.Input<List<String>>? typeAliases;

  EntryTypeArgs({
    this.description,
    this.displayName,
    this.entryTypeId,
    this.labels,
    this.location,
    this.platform,
    this.project,
    this.requiredAspects,
    this.system,
    this.typeAliases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final entryTypeIdValue = entryTypeId;
    if (entryTypeIdValue != null) {
      map['entryTypeId'] = entryTypeIdValue;
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requiredAspectsValue = requiredAspects;
    if (requiredAspectsValue != null) {
      map['requiredAspects'] = pulumi.Input.mapOptionalInputValue<
              List<EntryTypeRequiredAspect>, List<Map<String, dynamic>>>(
          requiredAspectsValue,
          (value) => pulumi.Input.encodeList<EntryTypeRequiredAspect,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final systemValue = system;
    if (systemValue != null) {
      map['system'] = systemValue;
    }
    final typeAliasesValue = typeAliases;
    if (typeAliasesValue != null) {
      map['typeAliases'] = typeAliasesValue;
    }
    return map;
  }

  factory EntryTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntryTypeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      entryTypeId: pulumi.Input.asOptionalInput<String>(map['entryTypeId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      platform: pulumi.Input.asOptionalInput<String>(map['platform']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requiredAspects:
          pulumi.Input.asOptionalInput<List<EntryTypeRequiredAspect>>(
              map['requiredAspects']),
      system: pulumi.Input.asOptionalInput<String>(map['system']),
      typeAliases:
          pulumi.Input.asOptionalInput<List<String>>(map['typeAliases']),
    );
  }
}
