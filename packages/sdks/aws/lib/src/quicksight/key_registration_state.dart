// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_registration_key_registration.dart';

/// Input properties used for looking up and filtering KeyRegistration resources.
class KeyRegistrationState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Registered keys. See key_registration.
  final pulumi.Input<List<KeyRegistrationKeyRegistration>>? keyRegistrations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [KeyRegistrationState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [keyRegistrations] Registered keys. See key_registration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  KeyRegistrationState({
    this.awsAccountId,
    this.keyRegistrations,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'keyRegistrations': ?pulumi.Input.mapOptionalInputValue<List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(keyRegistrations, (value) => pulumi.Input.encodeList<KeyRegistrationKeyRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory KeyRegistrationState.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationState(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRegistrations: (() { final guardedValue = map['keyRegistrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyRegistrationKeyRegistration>(guardedValue, (value) => KeyRegistrationKeyRegistration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

