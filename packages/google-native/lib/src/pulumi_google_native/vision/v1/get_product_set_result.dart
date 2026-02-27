// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_vision_v1.dart';

/// Result data returned by getProductSet.
class GetProductSetResult {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  final String displayName;

  /// If there was an error with indexing the product set, the field is populated. This field is ignored when creating a ProductSet.
  final StatusResponseVisionV1 indexError;

  /// The time at which this ProductSet was last indexed. Query results will reflect all updates before this time. If this ProductSet has never been indexed, this timestamp is the default value "1970-01-01T00:00:00Z". This field is ignored when creating a ProductSet.
  final String indexTime;

  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  final String name;

  GetProductSetResult({
    required this.displayName,
    required this.indexError,
    required this.indexTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['indexError'] = indexError.toMap();
    map['indexTime'] = indexTime;
    map['name'] = name;
    return map;
  }

  factory GetProductSetResult.fromMap(Map<String, dynamic> map) {
    return GetProductSetResult(
      displayName: map['displayName'] as String,
      indexError: StatusResponseVisionV1.fromMap(
          (map['indexError'] as Map).cast<String, dynamic>()),
      indexTime: map['indexTime'] as String,
      name: map['name'] as String,
    );
  }
}
