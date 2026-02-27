// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../permission_timeouts/permission_timeouts.dart';

/// The set of arguments for Permission.
class PermissionRamArgs {
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

  PermissionRamArgs({
    this.name,
    required this.policyTemplate,
    this.region,
    required this.resourceType,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyTemplate'] = policyTemplate;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceType'] = resourceType;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<PermissionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PermissionRamArgs.fromMap(Map<String, dynamic> map) {
    return PermissionRamArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyTemplate: pulumi.Input.asInput<String>(map['policyTemplate']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<PermissionTimeouts>(map['timeouts']),
    );
  }
}
