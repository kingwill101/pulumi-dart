// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'representation_contract.dart';

/// Operation request details.
class RequestContract {
  /// Operation request description.
  final pulumi.Input<String>? description;
  /// Collection of operation request headers.
  final pulumi.Input<List<ParameterContract>>? headers;
  /// Collection of operation request query parameters.
  final pulumi.Input<List<ParameterContract>>? queryParameters;
  /// Collection of operation request representations.
  final pulumi.Input<List<RepresentationContract>>? representations;

  /// Creates a new [RequestContract].
  /// [description] Operation request description.
  /// [headers] Collection of operation request headers.
  /// [queryParameters] Collection of operation request query parameters.
  /// [representations] Collection of operation request representations.
  RequestContract({
    this.description,
    this.headers,
    this.queryParameters,
    this.representations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ParameterContract>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterContract>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<RepresentationContract>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<RepresentationContract, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RequestContract.fromMap(Map<String, dynamic> map) {
    return RequestContract(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<ParameterContract>(map['headers'], (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queryParameters: map['queryParameters'] == null ? null : (pulumi.Input.decodeList<ParameterContract>(map['queryParameters'], (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      representations: map['representations'] == null ? null : (pulumi.Input.decodeList<RepresentationContract>(map['representations'], (value) => RepresentationContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

