// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'representation_contract_response.dart';

/// Operation request details.
class RequestContractResponse {
  /// Operation request description.
  final pulumi.Input<String>? description;
  /// Collection of operation request headers.
  final pulumi.Input<List<ParameterContractResponse>>? headers;
  /// Collection of operation request query parameters.
  final pulumi.Input<List<ParameterContractResponse>>? queryParameters;
  /// Collection of operation request representations.
  final pulumi.Input<List<RepresentationContractResponse>>? representations;

  /// Creates a new [RequestContractResponse].
  /// [description] Operation request description.
  /// [headers] Collection of operation request headers.
  /// [queryParameters] Collection of operation request query parameters.
  /// [representations] Collection of operation request representations.
  const RequestContractResponse({
    this.description,
    this.headers,
    this.queryParameters,
    this.representations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ParameterContractResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterContractResponse>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<RepresentationContractResponse>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<RepresentationContractResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RequestContractResponse.fromMap(Map<String, dynamic> map) {
    return RequestContractResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterContractResponse>(guardedValue, (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterContractResponse>(guardedValue, (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      representations: (() { final guardedValue = map['representations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepresentationContractResponse>(guardedValue, (value) => RepresentationContractResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
