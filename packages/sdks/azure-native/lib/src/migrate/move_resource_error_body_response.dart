// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An error response from the Azure Migrate service.
class MoveResourceErrorBodyResponse {
  /// An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  final pulumi.Input<String> code;
  /// A list of additional details about the error.
  final pulumi.Input<List<MoveResourceErrorBodyResponse>> details;
  /// A message describing the error, intended to be suitable for display in a user interface.
  final pulumi.Input<String> message;
  /// The target of the particular error. For example, the name of the property in error.
  final pulumi.Input<String> target;

  /// Creates a new [MoveResourceErrorBodyResponse].
  /// [code] An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  /// [details] A list of additional details about the error.
  /// [message] A message describing the error, intended to be suitable for display in a user interface.
  /// [target] The target of the particular error. For example, the name of the property in error.
  MoveResourceErrorBodyResponse({
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.mapInputValue<List<MoveResourceErrorBodyResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<MoveResourceErrorBodyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'target': target,
    };
  }

  factory MoveResourceErrorBodyResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceErrorBodyResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<MoveResourceErrorBodyResponse>(map['details']!, (value) => MoveResourceErrorBodyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

