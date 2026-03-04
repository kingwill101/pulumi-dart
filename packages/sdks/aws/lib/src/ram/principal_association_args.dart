// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_principal_association_principal_association_args_doc}
/// The set of arguments for PrincipalAssociation.
/// {@endtemplate}
/// {@macro pulumi_ram_principal_association_principal_association_args_doc}
class PrincipalAssociationArgs {
  /// The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the resource share.
  final pulumi.Input<String> resourceShareArn;

  /// Creates a new [PrincipalAssociationArgs].
  /// [principal] The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShareArn] The Amazon Resource Name (ARN) of the resource share.
  PrincipalAssociationArgs({
    required this.principal,
    this.region,
    required this.resourceShareArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': principal,
      'region': ?region,
      'resourceShareArn': resourceShareArn,
    };
  }

  factory PrincipalAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalAssociationArgs(
      principal: pulumi.Input.fromValue(map['principal'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceShareArn: pulumi.Input.fromValue(
        map['resourceShareArn'] as String,
      ),
    );
  }
}
