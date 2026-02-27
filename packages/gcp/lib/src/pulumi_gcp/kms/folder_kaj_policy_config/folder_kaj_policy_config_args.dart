// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_kaj_policy_config_default_key_access_justification_policy/folder_kaj_policy_config_default_key_access_justification_policy.dart';

/// The set of arguments for FolderKajPolicyConfig.
class FolderKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy>?
      defaultKeyAccessJustificationPolicy;

  /// The numeric folder number for which to retrieve config.
  final pulumi.Input<String> folder;

  FolderKajPolicyConfigArgs({
    this.defaultKeyAccessJustificationPolicy,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeyAccessJustificationPolicyValue =
        defaultKeyAccessJustificationPolicy;
    if (defaultKeyAccessJustificationPolicyValue != null) {
      map['defaultKeyAccessJustificationPolicy'] =
          pulumi.Input.mapOptionalInputValue<
                  FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy,
                  Map<String, dynamic>>(
              defaultKeyAccessJustificationPolicyValue,
              (value) => value.toMap());
    }
    map['folder'] = folder;
    return map;
  }

  factory FolderKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy: pulumi.Input.asOptionalInput<
              FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy>(
          map['defaultKeyAccessJustificationPolicy']),
      folder: pulumi.Input.asInput<String>(map['folder']),
    );
  }
}
