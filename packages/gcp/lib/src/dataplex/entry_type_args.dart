// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_required_aspect.dart';

/// {@template pulumi_dataplex_entry_type_entry_type_args_doc}
/// The set of arguments for EntryType.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_type_entry_type_args_doc}
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

  /// Creates a new [EntryTypeArgs].
  /// [description] Description of the EntryType.
  /// [displayName] User friendly display name.
  /// [entryTypeId] The entry type id of the entry type.
  /// [labels] User-defined labels for the EntryType.
  /// [location] The location where entry type will be created in.
  /// [platform] The platform that Entries of this type belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [requiredAspects] AspectInfo for the entry type.
  /// [system] The system that Entries of this type belongs to.
  /// [typeAliases] Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  EntryTypeArgs({
    String? description,
    String? displayName,
    String? entryTypeId,
    Map<String, String>? labels,
    String? location,
    String? platform,
    String? project,
    List<EntryTypeRequiredAspect>? requiredAspects,
    String? system,
    List<String>? typeAliases,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        entryTypeId = pulumi.Input.asOptionalInput<String>(entryTypeId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        platform = pulumi.Input.asOptionalInput<String>(platform),
        project = pulumi.Input.asOptionalInput<String>(project),
        requiredAspects =
            pulumi.Input.asOptionalInput<List<EntryTypeRequiredAspect>>(
                requiredAspects),
        system = pulumi.Input.asOptionalInput<String>(system),
        typeAliases = pulumi.Input.asOptionalInput<List<String>>(typeAliases);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entryTypeId:
          map['entryTypeId'] == null ? null : map['entryTypeId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requiredAspects: map['requiredAspects'] == null
          ? null
          : pulumi.Input.decodeList<EntryTypeRequiredAspect>(
              map['requiredAspects'],
              (value) => EntryTypeRequiredAspect.fromMap(
                  (value as Map).cast<String, dynamic>())),
      system: map['system'] == null ? null : map['system'] as String,
      typeAliases: map['typeAliases'] == null
          ? null
          : (map['typeAliases'] as List).cast<String>(),
    );
  }
}
