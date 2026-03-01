// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction.dart';
import 'facet_options.dart';
import 'query_interpretation_config.dart';
import 'scoring_config.dart';
import 'sort_options.dart';
import 'source_config.dart';

/// {@template pulumi_cloudsearch_v1_search_application_args_doc}
/// The set of arguments for SearchApplication.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_search_application_args_doc}
class SearchApplicationArgs {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  final pulumi.Input<List<DataSourceRestriction>>? dataSourceRestrictions;

  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  final pulumi.Input<List<FacetOptions>>? defaultFacetOptions;

  /// The default options for sorting the search results
  final pulumi.Input<SortOptions>? defaultSortOptions;

  /// Display name of the Search Application. The maximum length is 300 characters.
  final pulumi.Input<String>? displayName;

  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  final pulumi.Input<bool>? enableAuditLog;

  /// The name of the Search Application. Format: searchapplications/{application_id}.
  final pulumi.Input<String>? name;

  /// The default options for query interpretation
  final pulumi.Input<QueryInterpretationConfig>? queryInterpretationConfig;

  /// With each result we should return the URI for its thumbnail (when applicable)
  final pulumi.Input<bool>? returnResultThumbnailUrls;

  /// Configuration for ranking results.
  final pulumi.Input<ScoringConfig>? scoringConfig;

  /// Configuration for a sources specified in data_source_restrictions.
  final pulumi.Input<List<SourceConfig>>? sourceConfig;

  /// Creates a new [SearchApplicationArgs].
  /// [dataSourceRestrictions] Retrictions applied to the configurations. The maximum number of elements is 10.
  /// [defaultFacetOptions] The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  /// [defaultSortOptions] The default options for sorting the search results
  /// [displayName] Display name of the Search Application. The maximum length is 300 characters.
  /// [enableAuditLog] Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  /// [name] The name of the Search Application. Format: searchapplications/{application_id}.
  /// [queryInterpretationConfig] The default options for query interpretation
  /// [returnResultThumbnailUrls] With each result we should return the URI for its thumbnail (when applicable)
  /// [scoringConfig] Configuration for ranking results.
  /// [sourceConfig] Configuration for a sources specified in data_source_restrictions.
  SearchApplicationArgs({
    List<DataSourceRestriction>? dataSourceRestrictions,
    List<FacetOptions>? defaultFacetOptions,
    SortOptions? defaultSortOptions,
    String? displayName,
    bool? enableAuditLog,
    String? name,
    QueryInterpretationConfig? queryInterpretationConfig,
    bool? returnResultThumbnailUrls,
    ScoringConfig? scoringConfig,
    List<SourceConfig>? sourceConfig,
  }) : dataSourceRestrictions =
           pulumi.Input.asOptionalInput<List<DataSourceRestriction>>(
             dataSourceRestrictions,
           ),
       defaultFacetOptions = pulumi.Input.asOptionalInput<List<FacetOptions>>(
         defaultFacetOptions,
       ),
       defaultSortOptions = pulumi.Input.asOptionalInput<SortOptions>(
         defaultSortOptions,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enableAuditLog = pulumi.Input.asOptionalInput<bool>(enableAuditLog),
       name = pulumi.Input.asOptionalInput<String>(name),
       queryInterpretationConfig =
           pulumi.Input.asOptionalInput<QueryInterpretationConfig>(
             queryInterpretationConfig,
           ),
       returnResultThumbnailUrls = pulumi.Input.asOptionalInput<bool>(
         returnResultThumbnailUrls,
       ),
       scoringConfig = pulumi.Input.asOptionalInput<ScoringConfig>(
         scoringConfig,
       ),
       sourceConfig = pulumi.Input.asOptionalInput<List<SourceConfig>>(
         sourceConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceRestrictions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataSourceRestriction>,
            List<Map<String, dynamic>>
          >(
            dataSourceRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  DataSourceRestriction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultFacetOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FacetOptions>,
            List<Map<String, dynamic>>
          >(
            defaultFacetOptions,
            (value) =>
                pulumi.Input.encodeList<FacetOptions, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'defaultSortOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SortOptions,
            Map<String, dynamic>
          >(defaultSortOptions, (value) => value.toMap()),
      'displayName': ?displayName,
      'enableAuditLog': ?enableAuditLog,
      'name': ?name,
      'queryInterpretationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            QueryInterpretationConfig,
            Map<String, dynamic>
          >(queryInterpretationConfig, (value) => value.toMap()),
      'returnResultThumbnailUrls': ?returnResultThumbnailUrls,
      'scoringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ScoringConfig,
            Map<String, dynamic>
          >(scoringConfig, (value) => value.toMap()),
      'sourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            List<SourceConfig>,
            List<Map<String, dynamic>>
          >(
            sourceConfig,
            (value) =>
                pulumi.Input.encodeList<SourceConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory SearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SearchApplicationArgs(
      dataSourceRestrictions: map['dataSourceRestrictions'] == null
          ? null
          : pulumi.Input.decodeList<DataSourceRestriction>(
              map['dataSourceRestrictions'],
              (value) => DataSourceRestriction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      defaultFacetOptions: map['defaultFacetOptions'] == null
          ? null
          : pulumi.Input.decodeList<FacetOptions>(
              map['defaultFacetOptions'],
              (value) =>
                  FacetOptions.fromMap((value as Map).cast<String, dynamic>()),
            ),
      defaultSortOptions: map['defaultSortOptions'] == null
          ? null
          : SortOptions.fromMap(
              (map['defaultSortOptions'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enableAuditLog: map['enableAuditLog'] == null
          ? null
          : map['enableAuditLog'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      queryInterpretationConfig: map['queryInterpretationConfig'] == null
          ? null
          : QueryInterpretationConfig.fromMap(
              (map['queryInterpretationConfig'] as Map).cast<String, dynamic>(),
            ),
      returnResultThumbnailUrls: map['returnResultThumbnailUrls'] == null
          ? null
          : map['returnResultThumbnailUrls'] as bool,
      scoringConfig: map['scoringConfig'] == null
          ? null
          : ScoringConfig.fromMap(
              (map['scoringConfig'] as Map).cast<String, dynamic>(),
            ),
      sourceConfig: map['sourceConfig'] == null
          ? null
          : pulumi.Input.decodeList<SourceConfig>(
              map['sourceConfig'],
              (value) =>
                  SourceConfig.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
