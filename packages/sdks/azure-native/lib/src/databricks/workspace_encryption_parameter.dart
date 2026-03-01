// ignore_for_file: unused_element, unnecessary_cast

import 'encryption.dart';

/// The object that contains details of encryption used on the workspace.
class WorkspaceEncryptionParameter {
  /// The value which should be used for this field.
  final Encryption? value;

  /// Creates a new [WorkspaceEncryptionParameter].
  /// [value] The value which should be used for this field.
  WorkspaceEncryptionParameter({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory WorkspaceEncryptionParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceEncryptionParameter(
      value: map['value'] == null ? null : Encryption.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

