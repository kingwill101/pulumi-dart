// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_permission_set_permission_set_args_doc}
/// The set of arguments for PermissionSet.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_permission_set_permission_set_args_doc}
class PermissionSetArgs {
  /// The description of the Permission Set.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;
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

  /// Creates a new [PermissionSetArgs].
  /// [description] The description of the Permission Set.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [name] The name of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relayState] The relay state URL used to redirect users within the application during the federation authentication process.
  /// [sessionDuration] The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PermissionSetArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relayState,
    pulumi.Output<String>? sessionDuration,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceArn = pulumi.Input.asInput<String>(instanceArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      relayState = pulumi.Input.asOptionalInput<String>(relayState),
      sessionDuration = pulumi.Input.asOptionalInput<String>(sessionDuration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceArn': instanceArn,
      'name': ?name,
      'region': ?region,
      'relayState': ?relayState,
      'sessionDuration': ?sessionDuration,
      'tags': ?tags,
    };
  }

  factory PermissionSetArgs.fromMap(Map<String, dynamic> map) {
    return PermissionSetArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceArn: pulumi.Output.create<String>(map['instanceArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relayState: map['relayState'] == null ? null : pulumi.Output.create<String>(map['relayState'] as String),
      sessionDuration: map['sessionDuration'] == null ? null : pulumi.Output.create<String>(map['sessionDuration'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

