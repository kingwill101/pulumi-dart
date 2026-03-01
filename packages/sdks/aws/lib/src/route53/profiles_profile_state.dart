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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareStatus,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ProfilesProfileTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareStatus = pulumi.Input.asOptionalInput<String>(shareStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ProfilesProfileTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareStatus: map['shareStatus'] == null ? null : pulumi.Output.create<String>(map['shareStatus'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProfilesProfileTimeouts>(ProfilesProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

