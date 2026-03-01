// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_managed_hardware_security_module_key_rotation_policy_managed_hardware_security_module_key_rotation_policy_args_doc}
/// The set of arguments for ManagedHardwareSecurityModuleKeyRotationPolicy.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_hardware_security_module_key_rotation_policy_managed_hardware_security_module_key_rotation_policy_args_doc}
class ManagedHardwareSecurityModuleKeyRotationPolicyArgs {
  /// Specify the expiration duration on a newly rotated key as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `P28D`.
  final pulumi.Input<String> expireAfter;
  /// The ID of the Managed HSM Key. Changing this forces a new Managed HSM Key rotation policy to be created.
  final pulumi.Input<String> managedHsmKeyId;
  /// Rotate automatically at a duration after key creation as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  final pulumi.Input<String>? timeAfterCreation;
  /// Rotate automatically at a duration before key expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  final pulumi.Input<String>? timeBeforeExpiry;

  /// Creates a new [ManagedHardwareSecurityModuleKeyRotationPolicyArgs].
  /// [expireAfter] Specify the expiration duration on a newly rotated key as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `P28D`.
  /// [managedHsmKeyId] The ID of the Managed HSM Key. Changing this forces a new Managed HSM Key rotation policy to be created.
  /// [timeAfterCreation] Rotate automatically at a duration after key creation as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  /// [timeBeforeExpiry] Rotate automatically at a duration before key expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Exactly one of `time_after_creation` or `time_before_expiry` should be specified.
  ManagedHardwareSecurityModuleKeyRotationPolicyArgs({
    required String expireAfter,
    required String managedHsmKeyId,
    String? timeAfterCreation,
    String? timeBeforeExpiry,
  }) :
      expireAfter = pulumi.Input.asInput<String>(expireAfter),
      managedHsmKeyId = pulumi.Input.asInput<String>(managedHsmKeyId),
      timeAfterCreation = pulumi.Input.asOptionalInput<String>(timeAfterCreation),
      timeBeforeExpiry = pulumi.Input.asOptionalInput<String>(timeBeforeExpiry);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireAfter': expireAfter,
      'managedHsmKeyId': managedHsmKeyId,
      'timeAfterCreation': ?timeAfterCreation,
      'timeBeforeExpiry': ?timeBeforeExpiry,
    };
  }

  factory ManagedHardwareSecurityModuleKeyRotationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleKeyRotationPolicyArgs(
      expireAfter: map['expireAfter'] as String,
      managedHsmKeyId: map['managedHsmKeyId'] as String,
      timeAfterCreation: map['timeAfterCreation'] == null ? null : map['timeAfterCreation'] as String,
      timeBeforeExpiry: map['timeBeforeExpiry'] == null ? null : map['timeBeforeExpiry'] as String,
    );
  }
}

