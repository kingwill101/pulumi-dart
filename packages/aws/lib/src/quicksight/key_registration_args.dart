// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_registration_key_registration.dart';

/// {@template pulumi_quicksight_key_registration_key_registration_args_doc}
/// The set of arguments for KeyRegistration.
/// {@endtemplate}
/// {@macro pulumi_quicksight_key_registration_key_registration_args_doc}
class KeyRegistrationArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Registered keys. See key_registration.
  final pulumi.Input<List<KeyRegistrationKeyRegistration>> keyRegistrations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [KeyRegistrationArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [keyRegistrations] Registered keys. See key_registration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  KeyRegistrationArgs({
    String? awsAccountId,
    required List<KeyRegistrationKeyRegistration> keyRegistrations,
    String? region,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        keyRegistrations =
            pulumi.Input.asInput<List<KeyRegistrationKeyRegistration>>(
                keyRegistrations),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['keyRegistrations'] = pulumi.Input.mapInputValue<
            List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(
        keyRegistrations,
        (value) => pulumi.Input.encodeList<KeyRegistrationKeyRegistration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory KeyRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      keyRegistrations: pulumi.Input.decodeList<KeyRegistrationKeyRegistration>(
          map['keyRegistrations'],
          (value) => KeyRegistrationKeyRegistration.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
