// ignore_for_file: unused_element, unnecessary_cast

/// This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of Standard SQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions
class UserDefinedFunctionResource {
  /// [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  final String? inlineCode;

  /// [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  final String? resourceUri;

  /// Creates a new [UserDefinedFunctionResource].
  /// [inlineCode] [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  /// [resourceUri] [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  UserDefinedFunctionResource({
    this.inlineCode,
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inlineCodeValue = inlineCode;
    if (inlineCodeValue != null) {
      map['inlineCode'] = inlineCodeValue;
    }
    final resourceUriValue = resourceUri;
    if (resourceUriValue != null) {
      map['resourceUri'] = resourceUriValue;
    }
    return map;
  }

  factory UserDefinedFunctionResource.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionResource(
      inlineCode:
          map['inlineCode'] == null ? null : map['inlineCode'] as String,
      resourceUri:
          map['resourceUri'] == null ? null : map['resourceUri'] as String,
    );
  }
}
