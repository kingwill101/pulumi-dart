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
  const TagOptionResourceAssociationArgs({
    this.region,
    required this.resourceId,
    required this.tagOptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': resourceId,
      'tagOptionId': tagOptionId,
    };
  }

  factory TagOptionResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TagOptionResourceAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      tagOptionId: pulumi.Input.fromValue(map['tagOptionId'] as String),
    );
  }
}

