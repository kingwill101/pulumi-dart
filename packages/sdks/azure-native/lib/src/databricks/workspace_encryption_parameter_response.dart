// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';

/// The object that contains details of encryption used on the workspace.
class WorkspaceEncryptionParameterResponse {
  /// The type of variable that this is
  final pulumi.Input<String> type;
  /// The value which should be used for this field.
  final pulumi.Input<EncryptionResponse>? value;

  /// Creates a new [WorkspaceEncryptionParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  const WorkspaceEncryptionParameterResponse({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': ?pulumi.Input.mapOptionalInputValue<EncryptionResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory WorkspaceEncryptionParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceEncryptionParameterResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

