// ignore_for_file: unused_element, unnecessary_cast


/// Parameters of the search job that initiated this table.
class SearchResultsResponse {
  /// Search results table async operation id.
  final String azureAsyncOperationId;
  /// Search job Description.
  final String? description;
  /// The timestamp to end the search by (UTC)
  final String? endSearchTime;
  /// Limit the search job to return up to specified number of rows.
  final int? limit;
  /// Search job query.
  final String? query;
  /// The table used in the search job.
  final String sourceTable;
  /// The timestamp to start the search from (UTC)
  final String? startSearchTime;

  /// Creates a new [SearchResultsResponse].
  /// [azureAsyncOperationId] Search results table async operation id.
  /// [description] Search job Description.
  /// [endSearchTime] The timestamp to end the search by (UTC)
  /// [limit] Limit the search job to return up to specified number of rows.
  /// [query] Search job query.
  /// [sourceTable] The table used in the search job.
  /// [startSearchTime] The timestamp to start the search from (UTC)
  SearchResultsResponse({
    required this.azureAsyncOperationId,
    this.description,
    this.endSearchTime,
    this.limit,
    this.query,
    required this.sourceTable,
    this.startSearchTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsyncOperationId': azureAsyncOperationId,
      'description': ?description,
      'endSearchTime': ?endSearchTime,
      'limit': ?limit,
      'query': ?query,
      'sourceTable': sourceTable,
      'startSearchTime': ?startSearchTime,
    };
  }

  factory SearchResultsResponse.fromMap(Map<String, dynamic> map) {
    return SearchResultsResponse(
      azureAsyncOperationId: map['azureAsyncOperationId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endSearchTime: map['endSearchTime'] == null ? null : map['endSearchTime'] as String,
      limit: map['limit'] == null ? null : map['limit'] as int,
      query: map['query'] == null ? null : map['query'] as String,
      sourceTable: map['sourceTable'] as String,
      startSearchTime: map['startSearchTime'] == null ? null : map['startSearchTime'] as String,
    );
  }
}

