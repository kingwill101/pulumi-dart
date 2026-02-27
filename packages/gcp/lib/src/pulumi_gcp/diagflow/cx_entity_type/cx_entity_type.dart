import 'package:pulumi/pulumi.dart';
import '../cx_entity_type_entity/cx_entity_type_entity.dart';
import '../cx_entity_type_excluded_phrase/cx_entity_type_excluded_phrase.dart';
import 'cx_entity_type_args.dart';

/// Entities are extracted from user input and represent parameters that are meaningful to your application.
/// For example, a date range, a proper name such as a geographic location or landmark, and so on. Entities represent actionable data for your application.
///
///
/// To get more information about EntityType, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Entity Type Full
///
///
///
///
/// ## Import
///
/// EntityType can be imported using any of these accepted formats:
///
/// * `{{parent}}/entityTypes/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, EntityType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEntityType:CxEntityType default {{parent}}/entityTypes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEntityType:CxEntityType default {{parent}}/{{name}}
/// ```
class CxEntityType extends CustomResource {
  /// Represents kinds of entities.
  /// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
  /// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity.
  /// Possible values are: `AUTO_EXPANSION_MODE_DEFAULT`, `AUTO_EXPANSION_MODE_UNSPECIFIED`.
  late final Output<String?> autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  late final Output<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  late final Output<bool?> enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  late final Output<List<CxEntityTypeEntity>> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// Structure is documented below.
  late final Output<List<CxEntityTypeExcludedPhrase>?> excludedPhrases;

  /// Indicates whether the entity type can be automatically expanded.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  late final Output<String> kind;

  /// The language of the following fields in entityType:
  /// EntityType.entities.value
  /// EntityType.entities.synonyms
  /// EntityType.excluded_phrases.value
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;

  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID>.
  late final Output<String> name;

  /// The agent to create a entity type for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final Output<String?> parent;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  late final Output<bool?> redact;

  CxEntityType(
    String name, {
    CxEntityTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxEntityType:CxEntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoExpansionMode = registerOutput<String?>('autoExpansionMode');
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool?>('enableFuzzyExtraction');
    this.entities = registerOutput<List<CxEntityTypeEntity>>('entities');
    this.excludedPhrases =
        registerOutput<List<CxEntityTypeExcludedPhrase>?>('excludedPhrases');
    this.kind = registerOutput<String>('kind');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.redact = registerOutput<bool?>('redact');
  }
}
