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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyTemplate: map['policyTemplate'] == null ? null : (map['policyTemplate'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (PermissionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

