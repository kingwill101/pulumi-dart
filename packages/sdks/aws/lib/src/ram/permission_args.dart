// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_timeouts.dart';

/// {@template pulumi_ram_permission_permission_args_doc}
/// The set of arguments for Permission.
/// {@endtemplate}
/// {@macro pulumi_ram_permission_permission_args_doc}
class PermissionArgs {
  /// Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  final pulumi.Input<String>? name;
  /// A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  final pulumi.Input<String> policyTemplate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  final pulumi.Input<String> resourceType;
  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<PermissionTimeouts>? timeouts;

  /// Creates a new [PermissionArgs].
  /// [name] Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  /// [policyTemplate] A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  /// [tags] A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  PermissionArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyTemplate,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<PermissionTimeouts>? timeouts,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      policyTemplate = pulumi.Input.asInput<String>(policyTemplate),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<PermissionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policyTemplate': policyTemplate,
      'region': ?region,
      'resourceType': resourceType,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PermissionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory PermissionArgs.fromMap(Map<String, dynamic> map) {
    return PermissionArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyTemplate: pulumi.Output.create<String>(map['policyTemplate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<PermissionTimeouts>(PermissionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

