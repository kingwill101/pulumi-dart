// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym.dart';

/// The set of arguments for SynonymSet.
class SynonymSetArgs {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  final pulumi.Input<String>? context;
  final pulumi.Input<String>? location;

  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// List of Synonyms for the context.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>?
      synonyms;

  SynonymSetArgs({
    this.context,
    this.location,
    this.name,
    this.project,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final synonymsValue = synonyms;
    if (synonymsValue != null) {
      map['synonyms'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1SynonymSetSynonym>,
              List<Map<String, dynamic>>>(
          synonymsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudContentwarehouseV1SynonymSetSynonym,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return SynonymSetArgs(
      context: pulumi.Input.asOptionalInput<String>(map['context']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      synonyms: pulumi.Input.asOptionalInput<
              List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>(
          map['synonyms']),
    );
  }
}
