// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction.dart';
import 'facet_options.dart';
import 'query_interpretation_config.dart';
import 'scoring_config.dart';
import 'sort_options.dart';
import 'source_config.dart';

/// The set of arguments for SearchApplication.
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
      map['dataSourceRestrictions'] = pulumi.Input.mapOptionalInputValue<
              List<DataSourceRestriction>, List<Map<String, dynamic>>>(
          dataSourceRestrictionsValue,
          (value) => pulumi.Input.encodeList<DataSourceRestriction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final defaultFacetOptionsValue = defaultFacetOptions;
    if (defaultFacetOptionsValue != null) {
      map['defaultFacetOptions'] = pulumi.Input.mapOptionalInputValue<
              List<FacetOptions>, List<Map<String, dynamic>>>(
          defaultFacetOptionsValue,
          (value) =>
              pulumi.Input.encodeList<FacetOptions, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final defaultSortOptionsValue = defaultSortOptions;
    if (defaultSortOptionsValue != null) {
      map['defaultSortOptions'] =
          pulumi.Input.mapOptionalInputValue<SortOptions, Map<String, dynamic>>(
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
      map['queryInterpretationConfig'] = pulumi.Input.mapOptionalInputValue<
              QueryInterpretationConfig, Map<String, dynamic>>(
          queryInterpretationConfigValue, (value) => value.toMap());
    }
    final returnResultThumbnailUrlsValue = returnResultThumbnailUrls;
    if (returnResultThumbnailUrlsValue != null) {
      map['returnResultThumbnailUrls'] = returnResultThumbnailUrlsValue;
    }
    final scoringConfigValue = scoringConfig;
    if (scoringConfigValue != null) {
      map['scoringConfig'] = pulumi.Input.mapOptionalInputValue<ScoringConfig,
          Map<String, dynamic>>(scoringConfigValue, (value) => value.toMap());
    }
    final sourceConfigValue = sourceConfig;
    if (sourceConfigValue != null) {
      map['sourceConfig'] = pulumi.Input.mapOptionalInputValue<
              List<SourceConfig>, List<Map<String, dynamic>>>(
          sourceConfigValue,
          (value) =>
              pulumi.Input.encodeList<SourceConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory SearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SearchApplicationArgs(
      dataSourceRestrictions:
          pulumi.Input.asOptionalInput<List<DataSourceRestriction>>(
              map['dataSourceRestrictions']),
      defaultFacetOptions: pulumi.Input.asOptionalInput<List<FacetOptions>>(
          map['defaultFacetOptions']),
      defaultSortOptions:
          pulumi.Input.asOptionalInput<SortOptions>(map['defaultSortOptions']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enableAuditLog: pulumi.Input.asOptionalInput<bool>(map['enableAuditLog']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queryInterpretationConfig:
          pulumi.Input.asOptionalInput<QueryInterpretationConfig>(
              map['queryInterpretationConfig']),
      returnResultThumbnailUrls:
          pulumi.Input.asOptionalInput<bool>(map['returnResultThumbnailUrls']),
      scoringConfig:
          pulumi.Input.asOptionalInput<ScoringConfig>(map['scoringConfig']),
      sourceConfig:
          pulumi.Input.asOptionalInput<List<SourceConfig>>(map['sourceConfig']),
    );
  }
}
