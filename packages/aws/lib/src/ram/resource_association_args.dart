// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_resource_association_resource_association_args_doc}
/// The set of arguments for ResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_ram_resource_association_resource_association_args_doc}
class ResourceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  final pulumi.Input<String> resourceArn;

  /// Amazon Resource Name (ARN) of the RAM Resource Share.
  final pulumi.Input<String> resourceShareArn;

  /// Creates a new [ResourceAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  /// [resourceShareArn] Amazon Resource Name (ARN) of the RAM Resource Share.
  ResourceAssociationArgs({
    String? region,
    required String resourceArn,
    required String resourceShareArn,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        resourceArn = pulumi.Input.asInput<String>(resourceArn),
        resourceShareArn = pulumi.Input.asInput<String>(resourceShareArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['resourceShareArn'] = resourceShareArn;
    return map;
  }

  factory ResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      resourceShareArn: map['resourceShareArn'] as String,
    );
  }
}
