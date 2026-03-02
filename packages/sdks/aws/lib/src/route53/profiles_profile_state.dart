// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_profile_timeouts.dart';

/// Input properties used for looking up and filtering ProfilesProfile resources.
class ProfilesProfileState {
  /// ARN of the Profile.
  final pulumi.Input<String>? arn;
  /// Name of the Profile.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Share status of the Profile.
  final pulumi.Input<String>? shareStatus;
  /// Status of the Profile.
  final pulumi.Input<String>? status;
  /// Status message of the Profile.
  final pulumi.Input<String>? statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ProfilesProfileTimeouts>? timeouts;

  /// Creates a new [ProfilesProfileState].
  /// [arn] ARN of the Profile.
  /// [name] Name of the Profile.
  /// [ownerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shareStatus] Share status of the Profile.
  /// [status] Status of the Profile.
  /// [statusMessage] Status message of the Profile.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ProfilesProfileState({
    this.arn,
    this.name,
    this.ownerId,
    this.region,
    this.shareStatus,
    this.status,
    this.statusMessage,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'shareStatus': ?shareStatus,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesProfileState.fromMap(Map<String, dynamic> map) {
    return ProfilesProfileState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shareStatus: map['shareStatus'] == null ? null : (map['shareStatus'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusMessage: map['statusMessage'] == null ? null : (map['statusMessage'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ProfilesProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

