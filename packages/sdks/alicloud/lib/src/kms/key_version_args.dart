// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_version_key_version_args_doc}
/// The set of arguments for KeyVersion.
/// {@endtemplate}
/// {@macro pulumi_kms_key_version_key_version_args_doc}
class KeyVersionArgs {
  /// The id of the master key (CMK).
  ///
  /// > **NOTE:** The minimum interval for creating a Alikms key version is 7 days.
  final pulumi.Input<String> keyId;

  /// Creates a new [KeyVersionArgs].
  /// [keyId] The id of the master key (CMK).
  KeyVersionArgs({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory KeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return KeyVersionArgs(
      keyId: (map['keyId'] as String).input(),
    );
  }
}

