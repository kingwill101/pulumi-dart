// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_response_header.dart';
import 'api_operation_response_representation.dart';

class ApiOperationResponse {
  /// A description of the HTTP Response, which may include HTML tags.
  final String? description;
  /// One or more `header` blocks as defined above.
  final List<ApiOperationResponseHeader>? headers;
  /// One or more `representation` blocks as defined above.
  final List<ApiOperationResponseRepresentation>? representations;
  /// The HTTP Status Code.
  final int statusCode;

  /// Creates a new [ApiOperationResponse].
  /// [description] A description of the HTTP Response, which may include HTML tags.
  /// [headers] One or more `header` blocks as defined above.
  /// [representations] One or more `representation` blocks as defined above.
  /// [statusCode] The HTTP Status Code.
  ApiOperationResponse({
    this.description,
    this.headers,
    this.representations,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ApiOperationResponseHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'representations': ?representations == null ? null : pulumi.Input.encodeList<ApiOperationResponseRepresentation, Map<String, dynamic>>(representations!, (value) => value.toMap()),
      'statusCode': statusCode,
    };
  }

  factory ApiOperationResponse.fromMap(Map<String, dynamic> map) {
    return ApiOperationResponse(
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ApiOperationResponseHeader>(map['headers'], (value) => ApiOperationResponseHeader.fromMap((value as Map).cast<String, dynamic>())),
      representations: map['representations'] == null ? null : pulumi.Input.decodeList<ApiOperationResponseRepresentation>(map['representations'], (value) => ApiOperationResponseRepresentation.fromMap((value as Map).cast<String, dynamic>())),
      statusCode: map['statusCode'] as int,
    );
  }
}

