// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response.dart';

/// The object that contains details of encryption used on the workspace.
class WorkspaceEncryptionParameterResponse {
  /// The type of variable that this is
  final String type;
  /// The value which should be used for this field.
  final EncryptionResponse? value;

  /// Creates a new [WorkspaceEncryptionParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  WorkspaceEncryptionParameterResponse({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory WorkspaceEncryptionParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceEncryptionParameterResponse(
      type: map['type'] as String,
      value: map['value'] == null ? null : EncryptionResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

