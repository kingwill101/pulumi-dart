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
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<List<KeyRegistrationKeyRegistration>>? keyRegistrations,
    pulumi.Output<String>? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      keyRegistrations = pulumi.Input.asOptionalInput<List<KeyRegistrationKeyRegistration>>(keyRegistrations),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'keyRegistrations': ?pulumi.Input.mapOptionalInputValue<List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(keyRegistrations, (value) => pulumi.Input.encodeList<KeyRegistrationKeyRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory KeyRegistrationState.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      keyRegistrations: map['keyRegistrations'] == null ? null : pulumi.Output.create<List<KeyRegistrationKeyRegistration>>(pulumi.Input.decodeList<KeyRegistrationKeyRegistration>(map['keyRegistrations'], (value) => KeyRegistrationKeyRegistration.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

