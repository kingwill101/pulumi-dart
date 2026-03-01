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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relayState,
    pulumi.Output<String>? sessionDuration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      relayState = pulumi.Input.asOptionalInput<String>(relayState),
      sessionDuration = pulumi.Input.asOptionalInput<String>(sessionDuration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relayState: map['relayState'] == null ? null : pulumi.Output.create<String>(map['relayState'] as String),
      sessionDuration: map['sessionDuration'] == null ? null : pulumi.Output.create<String>(map['sessionDuration'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

