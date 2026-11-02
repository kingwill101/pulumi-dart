// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_profile_timeouts.dart';

/// {@template pulumi_cloudwatchomni_access_profile_access_profile_args_doc}
/// The set of arguments for AccessProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_access_profile_access_profile_args_doc}
class AccessProfileArgs {
  /// Description of the access profile.
  final pulumi.Input<String?>? description;
  /// Name of the access profile.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the space that contains the access profile.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> spaceId;
  final pulumi.Input<AccessProfileTimeouts?>? timeouts;

  /// Creates a new [AccessProfileArgs].
  /// [description] Description of the access profile.
  /// [name] Name of the access profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceId] ID of the space that contains the access profile.
  /// [timeouts] Optional.
  const AccessProfileArgs({
    this.description,
    this.name,
    this.region,
    required this.spaceId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'spaceId': spaceId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AccessProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AccessProfileArgs.fromMap(Map<String, dynamic> map) {
    return AccessProfileArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
