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
    this.name,
    required this.policyTemplate,
    this.region,
    required this.resourceType,
    this.tags,
    this.timeouts,
  });

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
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policyTemplate: (map['policyTemplate'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceType: (map['resourceType'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((PermissionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

