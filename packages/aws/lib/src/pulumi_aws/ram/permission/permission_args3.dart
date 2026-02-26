// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../permission_timeouts/permission_timeouts.dart';

/// The set of arguments for Permission.
class PermissionArgs3 {
  /// Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  final Input<String>? name;

  /// A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  final Input<String> policyTemplate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  final Input<String> resourceType;

  /// A map of tags to assign to the resource share. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<PermissionTimeouts>? timeouts;

  PermissionArgs3({
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
      map['timeouts'] =
          Input.mapOptionalInputValue<PermissionTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PermissionArgs3.fromMap(Map<String, dynamic> map) {
    return PermissionArgs3(
      name: Input.asOptionalInput<String>(map['name']),
      policyTemplate: Input.asInput<String>(map['policyTemplate']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceType: Input.asInput<String>(map['resourceType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<PermissionTimeouts>(map['timeouts']),
    );
  }
}
