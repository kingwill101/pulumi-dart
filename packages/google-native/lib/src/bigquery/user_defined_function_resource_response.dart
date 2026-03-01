// ignore_for_file: unused_element, unnecessary_cast

/// This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of Standard SQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions
class UserDefinedFunctionResourceResponse {
  /// [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  final String inlineCode;

  /// [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  final String resourceUri;

  /// Creates a new [UserDefinedFunctionResourceResponse].
  /// [inlineCode] [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  /// [resourceUri] [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  UserDefinedFunctionResourceResponse({
    required this.inlineCode,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineCode': inlineCode,
      'resourceUri': resourceUri,
    };
  }

  factory UserDefinedFunctionResourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserDefinedFunctionResourceResponse(
      inlineCode: map['inlineCode'] as String,
      resourceUri: map['resourceUri'] as String,
    );
  }
}
