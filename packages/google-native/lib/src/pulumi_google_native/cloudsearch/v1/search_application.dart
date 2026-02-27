import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction_response.dart';
import 'facet_options_response.dart';
import 'query_interpretation_config_response.dart';
import 'scoring_config_response.dart';
import 'search_application_args.dart';
import 'sort_options_response.dart';
import 'source_config_response.dart';

/// Creates a search application. **Note:** This API requires an admin account to execute.
class SearchApplication extends pulumi.CustomResource {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  late final pulumi.Output<List<DataSourceRestrictionResponse>>
      dataSourceRestrictions;

  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  late final pulumi.Output<List<FacetOptionsResponse>> defaultFacetOptions;

  /// The default options for sorting the search results
  late final pulumi.Output<SortOptionsResponse> defaultSortOptions;

  /// Display name of the Search Application. The maximum length is 300 characters.
  late final pulumi.Output<String> displayName;

  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  late final pulumi.Output<bool> enableAuditLog;

  /// The name of the Search Application. Format: searchapplications/{application_id}.
  late final pulumi.Output<String> name;

  /// IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.
  late final pulumi.Output<List<String>> operationIds;

  /// The default options for query interpretation
  late final pulumi.Output<QueryInterpretationConfigResponse>
      queryInterpretationConfig;

  /// With each result we should return the URI for its thumbnail (when applicable)
  late final pulumi.Output<bool> returnResultThumbnailUrls;

  /// Configuration for ranking results.
  late final pulumi.Output<ScoringConfigResponse> scoringConfig;

  /// Configuration for a sources specified in data_source_restrictions.
  late final pulumi.Output<List<SourceConfigResponse>> sourceConfig;

  SearchApplication(
    String name, {
    SearchApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudsearch/v1:SearchApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataSourceRestrictions =
        registerOutput<List<DataSourceRestrictionResponse>>(
            'dataSourceRestrictions');
    this.defaultFacetOptions =
        registerOutput<List<FacetOptionsResponse>>('defaultFacetOptions');
    this.defaultSortOptions =
        registerOutput<SortOptionsResponse>('defaultSortOptions');
    this.displayName = registerOutput<String>('displayName');
    this.enableAuditLog = registerOutput<bool>('enableAuditLog');
    this.name = registerOutput<String>('name');
    this.operationIds = registerOutput<List<String>>('operationIds');
    this.queryInterpretationConfig =
        registerOutput<QueryInterpretationConfigResponse>(
            'queryInterpretationConfig');
    this.returnResultThumbnailUrls =
        registerOutput<bool>('returnResultThumbnailUrls');
    this.scoringConfig = registerOutput<ScoringConfigResponse>('scoringConfig');
    this.sourceConfig =
        registerOutput<List<SourceConfigResponse>>('sourceConfig');
  }
}
