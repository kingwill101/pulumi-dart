// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_profile_timeouts.dart';

/// Input properties used for looking up and filtering AccessProfile resources.
class AccessProfileState {
  /// ARN of the access profile.
  final pulumi.Input<String?>? arn;
  /// Whether the calling principal can assume the access profile. Valid values: `ALLOWED`, `DENIED`.
  final pulumi.Input<String?>? assumeStatus;
  /// Description of the access profile.
  final pulumi.Input<String?>? description;
  /// Name of the access profile.
  final pulumi.Input<String?>? name;
  /// Unique identifier of the access profile.
  final pulumi.Input<String?>? profileId;
  /// Who manages the access profile. Valid values: `CUSTOMER_MANAGED`, `SERVICE_MANAGED`.
  final pulumi.Input<String?>? profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the space that contains the access profile.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? spaceId;
  final pulumi.Input<AccessProfileTimeouts?>? timeouts;

  /// Creates a new [AccessProfileState].
  /// [arn] ARN of the access profile.
  /// [assumeStatus] Whether the calling principal can assume the access profile. Valid values: `ALLOWED`, `DENIED`.
  /// [description] Description of the access profile.
  /// [name] Name of the access profile.
  /// [profileId] Unique identifier of the access profile.
  /// [profileType] Who manages the access profile. Valid values: `CUSTOMER_MANAGED`, `SERVICE_MANAGED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceId] ID of the space that contains the access profile.
  /// [timeouts] Optional.
  const AccessProfileState({
    this.arn,
    this.assumeStatus,
    this.description,
    this.name,
    this.profileId,
    this.profileType,
    this.region,
    this.spaceId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assumeStatus': ?assumeStatus,
      'description': ?description,
      'name': ?name,
      'profileId': ?profileId,
      'profileType': ?profileType,
      'region': ?region,
      'spaceId': ?spaceId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AccessProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AccessProfileState.fromMap(Map<String, dynamic> map) {
    return AccessProfileState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assumeStatus: (() { final guardedValue = map['assumeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
