// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyVersion resources.
class KeyVersionState {
  /// The id of the master key (CMK).
  ///
  /// > **NOTE:** The minimum interval for creating a Alikms key version is 7 days.
  final pulumi.Input<String>? keyId;
  /// The id of the Alikms key version.
  final pulumi.Input<String>? keyVersionId;

  /// Creates a new [KeyVersionState].
  /// [keyId] The id of the master key (CMK).
  /// [keyVersionId] The id of the Alikms key version.
  KeyVersionState({
    this.keyId,
    this.keyVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'keyVersionId': ?keyVersionId,
    };
  }

  factory KeyVersionState.fromMap(Map<String, dynamic> map) {
    return KeyVersionState(
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
      keyVersionId: map['keyVersionId'] == null ? null : (map['keyVersionId']! as String).input(),
    );
  }
}

