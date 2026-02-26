// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'data_source_restriction.dart';
import 'facet_options.dart';
import 'query_interpretation_config.dart';
import 'scoring_config.dart';
import 'sort_options.dart';
import 'source_config.dart';

/// The set of arguments for SearchApplication.
class SearchApplicationArgs {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  final Input<List<DataSourceRestriction>>? dataSourceRestrictions;

  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  final Input<List<FacetOptions>>? defaultFacetOptions;

  /// The default options for sorting the search results
  final Input<SortOptions>? defaultSortOptions;

  /// Display name of the Search Application. The maximum length is 300 characters.
  final Input<String>? displayName;

  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  final Input<bool>? enableAuditLog;

  /// The name of the Search Application. Format: searchapplications/{application_id}.
  final Input<String>? name;

  /// The default options for query interpretation
  final Input<QueryInterpretationConfig>? queryInterpretationConfig;

  /// With each result we should return the URI for its thumbnail (when applicable)
  final Input<bool>? returnResultThumbnailUrls;

  /// Configuration for ranking results.
  final Input<ScoringConfig>? scoringConfig;

  /// Configuration for a sources specified in data_source_restrictions.
  final Input<List<SourceConfig>>? sourceConfig;

  SearchApplicationArgs({
    this.dataSourceRestrictions,
    this.defaultFacetOptions,
    this.defaultSortOptions,
    this.displayName,
    this.enableAuditLog,
    this.name,
    this.queryInterpretationConfig,
    this.returnResultThumbnailUrls,
    this.scoringConfig,
    this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSourceRestrictionsValue = dataSourceRestrictions;
    if (dataSourceRestrictionsValue != null) {
      map['dataSourceRestrictions'] = Input.mapOptionalInputValue<
              List<DataSourceRestriction>, List<Map<String, dynamic>>>(
          dataSourceRestrictionsValue,
          (value) =>
              Input.encodeList<DataSourceRestriction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final defaultFacetOptionsValue = defaultFacetOptions;
    if (defaultFacetOptionsValue != null) {
      map['defaultFacetOptions'] = Input.mapOptionalInputValue<
              List<FacetOptions>, List<Map<String, dynamic>>>(
          defaultFacetOptionsValue,
          (value) => Input.encodeList<FacetOptions, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final defaultSortOptionsValue = defaultSortOptions;
    if (defaultSortOptionsValue != null) {
      map['defaultSortOptions'] =
          Input.mapOptionalInputValue<SortOptions, Map<String, dynamic>>(
              defaultSortOptionsValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enableAuditLogValue = enableAuditLog;
    if (enableAuditLogValue != null) {
      map['enableAuditLog'] = enableAuditLogValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final queryInterpretationConfigValue = queryInterpretationConfig;
    if (queryInterpretationConfigValue != null) {
      map['queryInterpretationConfig'] = Input.mapOptionalInputValue<
              QueryInterpretationConfig, Map<String, dynamic>>(
          queryInterpretationConfigValue, (value) => value.toMap());
    }
    final returnResultThumbnailUrlsValue = returnResultThumbnailUrls;
    if (returnResultThumbnailUrlsValue != null) {
      map['returnResultThumbnailUrls'] = returnResultThumbnailUrlsValue;
    }
    final scoringConfigValue = scoringConfig;
    if (scoringConfigValue != null) {
      map['scoringConfig'] =
          Input.mapOptionalInputValue<ScoringConfig, Map<String, dynamic>>(
              scoringConfigValue, (value) => value.toMap());
    }
    final sourceConfigValue = sourceConfig;
    if (sourceConfigValue != null) {
      map['sourceConfig'] = Input.mapOptionalInputValue<List<SourceConfig>,
              List<Map<String, dynamic>>>(
          sourceConfigValue,
          (value) => Input.encodeList<SourceConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory SearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SearchApplicationArgs(
      dataSourceRestrictions:
          Input.asOptionalInput<List<DataSourceRestriction>>(
              map['dataSourceRestrictions']),
      defaultFacetOptions:
          Input.asOptionalInput<List<FacetOptions>>(map['defaultFacetOptions']),
      defaultSortOptions:
          Input.asOptionalInput<SortOptions>(map['defaultSortOptions']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enableAuditLog: Input.asOptionalInput<bool>(map['enableAuditLog']),
      name: Input.asOptionalInput<String>(map['name']),
      queryInterpretationConfig:
          Input.asOptionalInput<QueryInterpretationConfig>(
              map['queryInterpretationConfig']),
      returnResultThumbnailUrls:
          Input.asOptionalInput<bool>(map['returnResultThumbnailUrls']),
      scoringConfig: Input.asOptionalInput<ScoringConfig>(map['scoringConfig']),
      sourceConfig:
          Input.asOptionalInput<List<SourceConfig>>(map['sourceConfig']),
    );
  }
}
