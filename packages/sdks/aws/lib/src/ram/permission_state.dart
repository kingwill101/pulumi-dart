// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_timeouts.dart';

/// Input properties used for looking up and filtering Permission resources.
class PermissionState {
  /// ARN of the permission.
  final pulumi.Input<String>? arn;
  /// Specifies whether the version of the managed permission used by this resource share is the default version for this managed permission.
  final pulumi.Input<bool>? defaultVersion;
  /// Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  final pulumi.Input<String>? name;
  /// A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  final pulumi.Input<String>? policyTemplate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  final pulumi.Input<String>? resourceType;
  /// The current status of the permission.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<PermissionTimeouts>? timeouts;
  /// The version of the permission associated with this resource share.
  final pulumi.Input<String>? version;

  /// Creates a new [PermissionState].
  /// [arn] ARN of the permission.
  /// [defaultVersion] Specifies whether the version of the managed permission used by this resource share is the default version for this managed permission.
  /// [name] Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  /// [policyTemplate] A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  /// [status] The current status of the permission.
  /// [tags] A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [version] The version of the permission associated with this resource share.
  PermissionState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? defaultVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyTemplate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<PermissionTimeouts>? timeouts,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultVersion = pulumi.Input.asOptionalInput<bool>(defaultVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyTemplate = pulumi.Input.asOptionalInput<String>(policyTemplate),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<PermissionTimeouts>(timeouts),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultVersion': ?defaultVersion,
      'name': ?name,
      'policyTemplate': ?policyTemplate,
      'region': ?region,
      'resourceType': ?resourceType,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PermissionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PermissionState.fromMap(Map<String, dynamic> map) {
    return PermissionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<bool>(map['defaultVersion'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyTemplate: map['policyTemplate'] == null ? null : pulumi.Output.create<String>(map['policyTemplate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<PermissionTimeouts>(PermissionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

