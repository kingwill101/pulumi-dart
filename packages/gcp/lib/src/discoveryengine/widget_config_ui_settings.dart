// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_ui_settings_data_store_ui_config.dart';
import 'widget_config_ui_settings_generative_answer_config.dart';

class WidgetConfigUiSettings {
  /// Per data store configuration.
  /// Structure is documented below.
  final List<WidgetConfigUiSettingsDataStoreUiConfig>? dataStoreUiConfigs;

  /// The default ordering for search results if specified.
  /// Used to set SearchRequest#orderBy on applicable requests.
  final String? defaultSearchRequestOrderBy;

  /// If set to true, the widget will not collect user events.
  final bool? disableUserEventsCollection;

  /// Whether or not to enable autocomplete.
  final bool? enableAutocomplete;

  /// If set to true, the widget will enable the create agent button.
  final bool? enableCreateAgentButton;

  /// If set to true, the widget will enable people search.
  final bool? enablePeopleSearch;

  /// Turn on or off collecting the search result quality feedback from end users.
  final bool? enableQualityFeedback;

  /// Whether to enable safe search.
  final bool? enableSafeSearch;

  /// Whether to enable search-as-you-type behavior for the search widget.
  final bool? enableSearchAsYouType;

  /// If set to true, the widget will enable visual content summary on applicable
  /// search requests. Only used by healthcare search.
  final bool? enableVisualContentSummary;

  /// Describes generative answer configuration.
  /// Structure is documented below.
  final WidgetConfigUiSettingsGenerativeAnswerConfig? generativeAnswerConfig;

  /// Describes widget (or web app) interaction type
  /// Possible values are: `SEARCH_ONLY`, `SEARCH_WITH_ANSWER`, `SEARCH_WITH_FOLLOW_UPS`.
  final String? interactionType;

  /// Controls whether result extract is display and how (snippet or extractive answer).
  /// Default to no result if unspecified.
  /// Possible values are: `SNIPPET`, `EXTRACTIVE_ANSWER`.
  final String? resultDescriptionType;

  /// Creates a new [WidgetConfigUiSettings].
  /// [dataStoreUiConfigs] Per data store configuration.
  /// [defaultSearchRequestOrderBy] The default ordering for search results if specified.
  /// [disableUserEventsCollection] If set to true, the widget will not collect user events.
  /// [enableAutocomplete] Whether or not to enable autocomplete.
  /// [enableCreateAgentButton] If set to true, the widget will enable the create agent button.
  /// [enablePeopleSearch] If set to true, the widget will enable people search.
  /// [enableQualityFeedback] Turn on or off collecting the search result quality feedback from end users.
  /// [enableSafeSearch] Whether to enable safe search.
  /// [enableSearchAsYouType] Whether to enable search-as-you-type behavior for the search widget.
  /// [enableVisualContentSummary] If set to true, the widget will enable visual content summary on applicable
  /// [generativeAnswerConfig] Describes generative answer configuration.
  /// [interactionType] Describes widget (or web app) interaction type
  /// [resultDescriptionType] Controls whether result extract is display and how (snippet or extractive answer).
  WidgetConfigUiSettings({
    this.dataStoreUiConfigs,
    this.defaultSearchRequestOrderBy,
    this.disableUserEventsCollection,
    this.enableAutocomplete,
    this.enableCreateAgentButton,
    this.enablePeopleSearch,
    this.enableQualityFeedback,
    this.enableSafeSearch,
    this.enableSearchAsYouType,
    this.enableVisualContentSummary,
    this.generativeAnswerConfig,
    this.interactionType,
    this.resultDescriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreUiConfigs': ?dataStoreUiConfigs == null
          ? null
          : pulumi.Input.encodeList<
              WidgetConfigUiSettingsDataStoreUiConfig,
              Map<String, dynamic>
            >(dataStoreUiConfigs!, (value) => value.toMap()),
      'defaultSearchRequestOrderBy': ?defaultSearchRequestOrderBy,
      'disableUserEventsCollection': ?disableUserEventsCollection,
      'enableAutocomplete': ?enableAutocomplete,
      'enableCreateAgentButton': ?enableCreateAgentButton,
      'enablePeopleSearch': ?enablePeopleSearch,
      'enableQualityFeedback': ?enableQualityFeedback,
      'enableSafeSearch': ?enableSafeSearch,
      'enableSearchAsYouType': ?enableSearchAsYouType,
      'enableVisualContentSummary': ?enableVisualContentSummary,
      'generativeAnswerConfig': ?generativeAnswerConfig == null
          ? null
          : generativeAnswerConfig!.toMap(),
      'interactionType': ?interactionType,
      'resultDescriptionType': ?resultDescriptionType,
    };
  }

  factory WidgetConfigUiSettings.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettings(
      dataStoreUiConfigs: map['dataStoreUiConfigs'] == null
          ? null
          : pulumi.Input.decodeList<WidgetConfigUiSettingsDataStoreUiConfig>(
              map['dataStoreUiConfigs'],
              (value) => WidgetConfigUiSettingsDataStoreUiConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      defaultSearchRequestOrderBy: map['defaultSearchRequestOrderBy'] == null
          ? null
          : map['defaultSearchRequestOrderBy'] as String,
      disableUserEventsCollection: map['disableUserEventsCollection'] == null
          ? null
          : map['disableUserEventsCollection'] as bool,
      enableAutocomplete: map['enableAutocomplete'] == null
          ? null
          : map['enableAutocomplete'] as bool,
      enableCreateAgentButton: map['enableCreateAgentButton'] == null
          ? null
          : map['enableCreateAgentButton'] as bool,
      enablePeopleSearch: map['enablePeopleSearch'] == null
          ? null
          : map['enablePeopleSearch'] as bool,
      enableQualityFeedback: map['enableQualityFeedback'] == null
          ? null
          : map['enableQualityFeedback'] as bool,
      enableSafeSearch: map['enableSafeSearch'] == null
          ? null
          : map['enableSafeSearch'] as bool,
      enableSearchAsYouType: map['enableSearchAsYouType'] == null
          ? null
          : map['enableSearchAsYouType'] as bool,
      enableVisualContentSummary: map['enableVisualContentSummary'] == null
          ? null
          : map['enableVisualContentSummary'] as bool,
      generativeAnswerConfig: map['generativeAnswerConfig'] == null
          ? null
          : WidgetConfigUiSettingsGenerativeAnswerConfig.fromMap(
              (map['generativeAnswerConfig'] as Map).cast<String, dynamic>(),
            ),
      interactionType: map['interactionType'] == null
          ? null
          : map['interactionType'] as String,
      resultDescriptionType: map['resultDescriptionType'] == null
          ? null
          : map['resultDescriptionType'] as String,
    );
  }
}
