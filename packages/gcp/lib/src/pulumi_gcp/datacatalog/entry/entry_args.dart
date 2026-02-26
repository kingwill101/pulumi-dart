// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entry_gcs_fileset_spec/entry_gcs_fileset_spec.dart';

/// The set of arguments for Entry.
class EntryArgs {
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents.
  final Input<String>? description;

  /// Display information such as title and description. A short name to identify the entry,
  /// for example, "Analytics Data - Jan 2011".
  final Input<String>? displayName;

  /// The name of the entry group this entry is in.
  final Input<String> entryGroup;

  /// The id of the entry to create.
  final Input<String> entryId;

  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// Structure is documented below.
  final Input<EntryGcsFilesetSpec>? gcsFilesetSpec;

  /// The resource this metadata entry refers to.
  /// For Google Cloud Platform resources, linkedResource is the full name of the resource.
  /// For example, the linkedResource for a table resource from BigQuery is:
  /// //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
  /// Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
  /// this field is optional and defaults to an empty string.
  final Input<String>? linkedResource;

  /// Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
  /// attached to it. See
  /// https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
  /// for what fields this schema can contain.
  final Input<String>? schema;

  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  /// Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType.
  /// Possible values are: `FILESET`.
  final Input<String>? type;

  /// This field indicates the entry's source system that Data Catalog does not integrate with.
  /// userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
  /// and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final Input<String>? userSpecifiedSystem;

  /// Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
  /// When creating an entry, users should check the enum values first, if nothing matches the entry
  /// to be created, then provide a custom value, for example <span pulumi-lang-nodejs=""mySpecialType"" pulumi-lang-dotnet=""MySpecialType"" pulumi-lang-go=""mySpecialType"" pulumi-lang-python=""my_special_type"" pulumi-lang-yaml=""mySpecialType"" pulumi-lang-java=""mySpecialType"">"my_special_type"</span>.
  /// userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
  /// numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final Input<String>? userSpecifiedType;

  EntryArgs({
    this.description,
    this.displayName,
    required this.entryGroup,
    required this.entryId,
    this.gcsFilesetSpec,
    this.linkedResource,
    this.schema,
    this.type,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
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
    map['entryGroup'] = entryGroup;
    map['entryId'] = entryId;
    final gcsFilesetSpecValue = gcsFilesetSpec;
    if (gcsFilesetSpecValue != null) {
      map['gcsFilesetSpec'] = Input.mapOptionalInputValue<EntryGcsFilesetSpec,
          Map<String, dynamic>>(gcsFilesetSpecValue, (value) => value.toMap());
    }
    final linkedResourceValue = linkedResource;
    if (linkedResourceValue != null) {
      map['linkedResource'] = linkedResourceValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userSpecifiedSystemValue = userSpecifiedSystem;
    if (userSpecifiedSystemValue != null) {
      map['userSpecifiedSystem'] = userSpecifiedSystemValue;
    }
    final userSpecifiedTypeValue = userSpecifiedType;
    if (userSpecifiedTypeValue != null) {
      map['userSpecifiedType'] = userSpecifiedTypeValue;
    }
    return map;
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      entryGroup: Input.asInput<String>(map['entryGroup']),
      entryId: Input.asInput<String>(map['entryId']),
      gcsFilesetSpec:
          Input.asOptionalInput<EntryGcsFilesetSpec>(map['gcsFilesetSpec']),
      linkedResource: Input.asOptionalInput<String>(map['linkedResource']),
      schema: Input.asOptionalInput<String>(map['schema']),
      type: Input.asOptionalInput<String>(map['type']),
      userSpecifiedSystem:
          Input.asOptionalInput<String>(map['userSpecifiedSystem']),
      userSpecifiedType:
          Input.asOptionalInput<String>(map['userSpecifiedType']),
    );
  }
}
