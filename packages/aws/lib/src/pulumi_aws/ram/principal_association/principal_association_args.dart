// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PrincipalAssociation.
class PrincipalAssociationArgs {
  /// The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the resource share.
  final pulumi.Input<String> resourceShareArn;

  PrincipalAssociationArgs({
    required this.principal,
    this.region,
    required this.resourceShareArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceShareArn'] = resourceShareArn;
    return map;
  }

  factory PrincipalAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalAssociationArgs(
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceShareArn: pulumi.Input.asInput<String>(map['resourceShareArn']),
    );
  }
}
