// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'representation_contract_response.dart';

/// Operation response details.
class ResponseContractResponse {
  /// Operation response description.
  final pulumi.Input<String>? description;
  /// Collection of operation response headers.
  final pulumi.Input<List<ParameterContractResponse>>? headers;
  /// Collection of operation response representations.
  final pulumi.Input<List<RepresentationContractResponse>>? representations;
  /// Operation response HTTP status code.
  final pulumi.Input<int> statusCode;

  /// Creates a new [ResponseContractResponse].
  /// [description] Operation response description.
  /// [headers] Collection of operation response headers.
  /// [representations] Collection of operation response representations.
  /// [statusCode] Operation response HTTP status code.
  const ResponseContractResponse({
    this.description,
    this.headers,
    this.representations,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ParameterContractResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<RepresentationContractResponse>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<RepresentationContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCode': statusCode,
    };
  }

  factory ResponseContractResponse.fromMap(Map<String, dynamic> map) {
    return ResponseContractResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterContractResponse>(guardedValue, (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      representations: (() { final guardedValue = map['representations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepresentationContractResponse>(guardedValue, (value) => RepresentationContractResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as int),
    );
  }
}
