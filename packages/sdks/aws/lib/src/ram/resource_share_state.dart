// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_resource_share_configuration.dart';

/// Input properties used for looking up and filtering ResourceShare resources.
class ResourceShareState {
  /// Whether principals outside your organization can be associated with a resource share.
  final pulumi.Input<bool>? allowExternalPrincipals;
  /// Amazon Resource Name (ARN) of the resource share.
  final pulumi.Input<String>? arn;
  /// Name of the resource share.
  final pulumi.Input<String>? name;
  /// Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  final pulumi.Input<List<String>>? permissionArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the resource share. See `resourceShareConfiguration` Block for details.
  final pulumi.Input<ResourceShareResourceShareConfiguration>? resourceShareConfiguration;
  /// Map of tags to assign to the resource share. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResourceShareState].
  /// [allowExternalPrincipals] Whether principals outside your organization can be associated with a resource share.
  /// [arn] Amazon Resource Name (ARN) of the resource share.
  /// [name] Name of the resource share.
  /// [permissionArns] Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShareConfiguration] Configuration block for the resource share. See `resourceShareConfiguration` Block for details.
  /// [tags] Map of tags to assign to the resource share. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ResourceShareState({
    this.allowExternalPrincipals,
    this.arn,
    this.name,
    this.permissionArns,
    this.region,
    this.resourceShareConfiguration,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalPrincipals': ?allowExternalPrincipals,
      'arn': ?arn,
      'name': ?name,
      'permissionArns': ?permissionArns,
      'region': ?region,
      'resourceShareConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceShareResourceShareConfiguration, Map<String, dynamic>>(resourceShareConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResourceShareState.fromMap(Map<String, dynamic> map) {
    return ResourceShareState(
      allowExternalPrincipals: (() { final guardedValue = map['allowExternalPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionArns: (() { final guardedValue = map['permissionArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareConfiguration: (() { final guardedValue = map['resourceShareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceShareResourceShareConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
