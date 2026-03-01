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
    pulumi.Output<String>? awsAccountId,
    required pulumi.Output<List<KeyRegistrationKeyRegistration>> keyRegistrations,
    pulumi.Output<String>? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      keyRegistrations = pulumi.Input.asInput<List<KeyRegistrationKeyRegistration>>(keyRegistrations),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'keyRegistrations': pulumi.Input.mapInputValue<List<KeyRegistrationKeyRegistration>, List<Map<String, dynamic>>>(keyRegistrations, (value) => pulumi.Input.encodeList<KeyRegistrationKeyRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory KeyRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return KeyRegistrationArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      keyRegistrations: pulumi.Output.create<List<KeyRegistrationKeyRegistration>>(pulumi.Input.decodeList<KeyRegistrationKeyRegistration>(map['keyRegistrations'], (value) => KeyRegistrationKeyRegistration.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

