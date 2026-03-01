// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataLfTagPolicy {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags match the expression body of the saved expression under the provided ExpressionName .
  final String? expressionName;

  /// List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  final List<String>? expressions;

  /// Resource type for which the LF-tag policy applies.
  final String resourceType;

  /// Creates a new [OptInResourceDataLfTagPolicy].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [expressionName] If provided, permissions are granted to the Data Catalog resources whose assigned LF-Tags match the expression body of the saved expression under the provided ExpressionName .
  /// [expressions] List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  /// [resourceType] Resource type for which the LF-tag policy applies.
  OptInResourceDataLfTagPolicy({
    this.catalogId,
    this.expressionName,
    this.expressions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'expressionName': ?expressionName,
      'expressions': ?expressions,
      'resourceType': resourceType,
    };
  }

  factory OptInResourceDataLfTagPolicy.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTagPolicy(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      expressionName: map['expressionName'] == null
          ? null
          : map['expressionName'] as String,
      expressions: map['expressions'] == null
          ? null
          : (map['expressions'] as List).cast<String>(),
      resourceType: map['resourceType'] as String,
    );
  }
}
