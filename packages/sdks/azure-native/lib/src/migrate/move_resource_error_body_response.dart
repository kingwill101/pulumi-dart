// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An error response from the Azure Migrate service.
class MoveResourceErrorBodyResponse {
  /// An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  final String code;
  /// A list of additional details about the error.
  final List<MoveResourceErrorBodyResponse> details;
  /// A message describing the error, intended to be suitable for display in a user interface.
  final String message;
  /// The target of the particular error. For example, the name of the property in error.
  final String target;

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
      'details': pulumi.Input.encodeList<MoveResourceErrorBodyResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
      'target': target,
    };
  }

  factory MoveResourceErrorBodyResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceErrorBodyResponse(
      code: map['code'] as String,
      details: pulumi.Input.decodeList<MoveResourceErrorBodyResponse>(map['details'], (value) => MoveResourceErrorBodyResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      target: map['target'] as String,
    );
  }
}

