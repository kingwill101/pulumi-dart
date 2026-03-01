// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'representation_contract_response.dart';

/// Operation response details.
class ResponseContractResponse {
  /// Operation response description.
  final String? description;
  /// Collection of operation response headers.
  final List<ParameterContractResponse>? headers;
  /// Collection of operation response representations.
  final List<RepresentationContractResponse>? representations;
  /// Operation response HTTP status code.
  final int statusCode;

  /// Creates a new [ResponseContractResponse].
  /// [description] Operation response description.
  /// [headers] Collection of operation response headers.
  /// [representations] Collection of operation response representations.
  /// [statusCode] Operation response HTTP status code.
  ResponseContractResponse({
    this.description,
    this.headers,
    this.representations,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'representations': ?representations == null ? null : pulumi.Input.encodeList<RepresentationContractResponse, Map<String, dynamic>>(representations!, (value) => value.toMap()),
      'statusCode': statusCode,
    };
  }

  factory ResponseContractResponse.fromMap(Map<String, dynamic> map) {
    return ResponseContractResponse(
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ParameterContractResponse>(map['headers'], (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      representations: map['representations'] == null ? null : pulumi.Input.decodeList<RepresentationContractResponse>(map['representations'], (value) => RepresentationContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      statusCode: map['statusCode'] as int,
    );
  }
}

