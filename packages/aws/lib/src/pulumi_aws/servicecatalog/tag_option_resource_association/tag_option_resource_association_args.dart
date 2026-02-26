// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TagOptionResourceAssociation.
class TagOptionResourceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource identifier.
  final Input<String> resourceId;

  /// Tag Option identifier.
  final Input<String> tagOptionId;

  TagOptionResourceAssociationArgs({
    this.region,
    required this.resourceId,
    required this.tagOptionId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      tagOptionId: Input.asInput<String>(map['tagOptionId']),
    );
  }
}
