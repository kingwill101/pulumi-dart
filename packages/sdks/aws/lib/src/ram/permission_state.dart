// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_timeouts.dart';

/// Input properties used for looking up and filtering Permission resources.
class PermissionState {
  /// ARN of the permission.
  final pulumi.Input<String?>? arn;
  /// Whether this is the default version of the managed permission.
  final pulumi.Input<bool?>? defaultVersion;
  /// Name of the customer managed permission. The name must be unique within the AWS Region.
  final pulumi.Input<String?>? name;
  /// String in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  final pulumi.Input<String?>? policyTemplate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the resource type that this customer managed permission applies to. The format is `&lt;service-code&gt;:&lt;resource-type&gt;` and is not case sensitive.
  final pulumi.Input<String?>? resourceType;
  /// Current status of the permission.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource share. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<PermissionTimeouts?>? timeouts;
  /// Version of the permission associated with this resource share.
  final pulumi.Input<String?>? version;

  /// Creates a new [PermissionState].
  /// [arn] ARN of the permission.
  /// [defaultVersion] Whether this is the default version of the managed permission.
  /// [name] Name of the customer managed permission. The name must be unique within the AWS Region.
  /// [policyTemplate] String in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Name of the resource type that this customer managed permission applies to. The format is `&lt;service-code&gt;:&lt;resource-type&gt;` and is not case sensitive.
  /// [status] Current status of the permission.
  /// [tags] Map of tags to assign to the resource share. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [version] Version of the permission associated with this resource share.
  const PermissionState({
    this.arn,
    this.defaultVersion,
    this.name,
    this.policyTemplate,
    this.region,
    this.resourceType,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.version,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyTemplate: (() { final guardedValue = map['policyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PermissionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
