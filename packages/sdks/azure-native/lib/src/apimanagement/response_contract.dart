// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'representation_contract.dart';

/// Operation response details.
class ResponseContract {
  /// Operation response description.
  final String? description;
  /// Collection of operation response headers.
  final List<ParameterContract>? headers;
  /// Collection of operation response representations.
  final List<RepresentationContract>? representations;
  /// Operation response HTTP status code.
  final int statusCode;

  /// Creates a new [ResponseContract].
  /// [description] Operation response description.
  /// [headers] Collection of operation response headers.
  /// [representations] Collection of operation response representations.
  /// [statusCode] Operation response HTTP status code.
  ResponseContract({
    this.description,
    this.headers,
    this.representations,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'representations': ?representations == null ? null : pulumi.Input.encodeList<RepresentationContract, Map<String, dynamic>>(representations!, (value) => value.toMap()),
      'statusCode': statusCode,
    };
  }

  factory ResponseContract.fromMap(Map<String, dynamic> map) {
    return ResponseContract(
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ParameterContract>(map['headers'], (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>())),
      representations: map['representations'] == null ? null : pulumi.Input.decodeList<RepresentationContract>(map['representations'], (value) => RepresentationContract.fromMap((value as Map).cast<String, dynamic>())),
      statusCode: map['statusCode'] as int,
    );
  }
}

