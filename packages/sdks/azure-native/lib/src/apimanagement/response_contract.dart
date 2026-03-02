// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'representation_contract.dart';

/// Operation response details.
class ResponseContract {
  /// Operation response description.
  final pulumi.Input<String>? description;
  /// Collection of operation response headers.
  final pulumi.Input<List<ParameterContract>>? headers;
  /// Collection of operation response representations.
  final pulumi.Input<List<RepresentationContract>>? representations;
  /// Operation response HTTP status code.
  final pulumi.Input<int> statusCode;

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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ParameterContract>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'representations': ?pulumi.Input.mapOptionalInputValue<List<RepresentationContract>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<RepresentationContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statusCode': statusCode,
    };
  }

  factory ResponseContract.fromMap(Map<String, dynamic> map) {
    return ResponseContract(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<ParameterContract>(map['headers']!, (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      representations: map['representations'] == null ? null : (pulumi.Input.decodeList<RepresentationContract>(map['representations']!, (value) => RepresentationContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statusCode: (map['statusCode'] as int).input(),
    );
  }
}

