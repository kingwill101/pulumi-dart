// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_tag_option_resource_association_tag_option_resource_association_args_doc}
/// The set of arguments for TagOptionResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_tag_option_resource_association_tag_option_resource_association_args_doc}
class TagOptionResourceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource identifier.
  final pulumi.Input<String> resourceId;

  /// Tag Option identifier.
  final pulumi.Input<String> tagOptionId;

  /// Creates a new [TagOptionResourceAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource identifier.
  /// [tagOptionId] Tag Option identifier.
  TagOptionResourceAssociationArgs({
    String? region,
    required String resourceId,
    required String tagOptionId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        resourceId = pulumi.Input.asInput<String>(resourceId),
        tagOptionId = pulumi.Input.asInput<String>(tagOptionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    map['tagOptionId'] = tagOptionId;
    return map;
  }

  factory TagOptionResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TagOptionResourceAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      tagOptionId: map['tagOptionId'] as String,
    );
  }
}
