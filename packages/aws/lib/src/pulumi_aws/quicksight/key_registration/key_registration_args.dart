// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../key_registration_key_registration/key_registration_key_registration.dart';

/// The set of arguments for KeyRegistration.
class KeyRegistrationArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Registered keys. See key_registration.
  final Input<List<KeyRegistrationKeyRegistration>> keyRegistrations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  KeyRegistrationArgs({
    this.awsAccountId,
    required this.keyRegistrations,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['keyRegistrations'] = Input.mapInputValue<
            List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(
        keyRegistrations,
        (value) => Input.encodeList<KeyRegistrationKeyRegistration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory KeyRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      keyRegistrations: Input.asInput<List<KeyRegistrationKeyRegistration>>(
          map['keyRegistrations']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
