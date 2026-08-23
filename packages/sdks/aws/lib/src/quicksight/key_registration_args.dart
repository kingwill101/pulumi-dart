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
  const KeyRegistrationArgs({
    this.awsAccountId,
    required this.keyRegistrations,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'keyRegistrations': pulumi.Input.mapInputValue<List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(keyRegistrations, (value) => pulumi.Input.encodeList<KeyRegistrationKeyRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory KeyRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRegistrations: pulumi.Input.fromValue(pulumi.Input.decodeList<KeyRegistrationKeyRegistration>(map['keyRegistrations']!, (value) => KeyRegistrationKeyRegistration.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
