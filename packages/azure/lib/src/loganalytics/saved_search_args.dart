// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_saved_search_saved_search_args_doc}
/// The set of arguments for SavedSearch.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_saved_search_saved_search_args_doc}
class SavedSearchArgs {
  /// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  final pulumi.Input<String> category;
  /// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  final pulumi.Input<String> displayName;
  /// The function alias if the query serves as a function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAlias;
  /// The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  final pulumi.Input<List<String>>? functionParameters;
  /// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The query expression for the saved search. Changing this forces a new resource to be created.
  final pulumi.Input<String> query;
  /// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SavedSearchArgs].
  /// [category] The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  /// [displayName] The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  /// [functionAlias] The function alias if the query serves as a function. Changing this forces a new resource to be created.
  /// [functionParameters] The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  /// [logAnalyticsWorkspaceId] Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  /// [query] The query expression for the saved search. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  SavedSearchArgs({
    required String category,
    required String displayName,
    String? functionAlias,
    List<String>? functionParameters,
    required String logAnalyticsWorkspaceId,
    String? name,
    required String query,
    Map<String, String>? tags,
  }) :
      category = pulumi.Input.asInput<String>(category),
      displayName = pulumi.Input.asInput<String>(displayName),
      functionAlias = pulumi.Input.asOptionalInput<String>(functionAlias),
      functionParameters = pulumi.Input.asOptionalInput<List<String>>(functionParameters),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asInput<String>(query),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'displayName': displayName,
      'functionAlias': ?functionAlias,
      'functionParameters': ?functionParameters,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'query': query,
      'tags': ?tags,
    };
  }

  factory SavedSearchArgs.fromMap(Map<String, dynamic> map) {
    return SavedSearchArgs(
      category: map['category'] as String,
      displayName: map['displayName'] as String,
      functionAlias: map['functionAlias'] == null ? null : map['functionAlias'] as String,
      functionParameters: map['functionParameters'] == null ? null : (map['functionParameters'] as List).cast<String>(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      query: map['query'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

