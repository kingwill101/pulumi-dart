// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entry_type_required_aspect/entry_type_required_aspect.dart';

/// The set of arguments for EntryType.
class EntryTypeArgs {
  /// Description of the EntryType.
  final Input<String>? description;

  /// User friendly display name.
  final Input<String>? displayName;

  /// The entry type id of the entry type.
  final Input<String>? entryTypeId;

  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where entry type will be created in.
  final Input<String>? location;

  /// The platform that Entries of this type belongs to.
  final Input<String>? platform;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// AspectInfo for the entry type.
  /// Structure is documented below.
  final Input<List<EntryTypeRequiredAspect>>? requiredAspects;

  /// The system that Entries of this type belongs to.
  final Input<String>? system;

  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  final Input<List<String>>? typeAliases;

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
      map['requiredAspects'] = Input.mapOptionalInputValue<
              List<EntryTypeRequiredAspect>, List<Map<String, dynamic>>>(
          requiredAspectsValue,
          (value) =>
              Input.encodeList<EntryTypeRequiredAspect, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      entryTypeId: Input.asOptionalInput<String>(map['entryTypeId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      platform: Input.asOptionalInput<String>(map['platform']),
      project: Input.asOptionalInput<String>(map['project']),
      requiredAspects: Input.asOptionalInput<List<EntryTypeRequiredAspect>>(
          map['requiredAspects']),
      system: Input.asOptionalInput<String>(map['system']),
      typeAliases: Input.asOptionalInput<List<String>>(map['typeAliases']),
    );
  }
}
