// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PermissionSet resources.
class PermissionSetState {
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String>? arn;
  /// The date the Permission Set was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? createdDate;
  /// The description of the Permission Set.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String>? instanceArn;
  /// The name of the Permission Set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The relay state URL used to redirect users within the application during the federation authentication process.
  final pulumi.Input<String>? relayState;
  /// The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  final pulumi.Input<String>? sessionDuration;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PermissionSetState].
  /// [arn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [createdDate] The date the Permission Set was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [description] The description of the Permission Set.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [name] The name of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relayState] The relay state URL used to redirect users within the application during the federation authentication process.
  /// [sessionDuration] The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PermissionSetState({
    this.arn,
    this.createdDate,
    this.description,
    this.instanceArn,
    this.name,
    this.region,
    this.relayState,
    this.sessionDuration,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'description': ?description,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'region': ?region,
      'relayState': ?relayState,
      'sessionDuration': ?sessionDuration,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PermissionSetState.fromMap(Map<String, dynamic> map) {
    return PermissionSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdDate: map['createdDate'] == null ? null : ((map['createdDate'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      instanceArn: map['instanceArn'] == null ? null : ((map['instanceArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      relayState: map['relayState'] == null ? null : ((map['relayState'] as String).input()).input(),
      sessionDuration: map['sessionDuration'] == null ? null : ((map['sessionDuration'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

