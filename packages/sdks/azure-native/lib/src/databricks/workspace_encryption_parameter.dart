// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';

/// The object that contains details of encryption used on the workspace.
class WorkspaceEncryptionParameter {
  /// The value which should be used for this field.
  final pulumi.Input<Encryption>? value;

  /// Creates a new [WorkspaceEncryptionParameter].
  /// [value] The value which should be used for this field.
  WorkspaceEncryptionParameter({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory WorkspaceEncryptionParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceEncryptionParameter(
      value: map['value'] == null ? null : (Encryption.fromMap((map['value']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

