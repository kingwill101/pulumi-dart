// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourceAssociation.
class ResourceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  final Input<String> resourceArn;

  /// Amazon Resource Name (ARN) of the RAM Resource Share.
  final Input<String> resourceShareArn;

  ResourceAssociationArgs({
    this.region,
    required this.resourceArn,
    required this.resourceShareArn,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      resourceShareArn: Input.asInput<String>(map['resourceShareArn']),
    );
  }
}
