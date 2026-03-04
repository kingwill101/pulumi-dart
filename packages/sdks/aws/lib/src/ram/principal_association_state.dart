// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrincipalAssociation resources.
class PrincipalAssociationState {
  /// The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  final pulumi.Input<String>? principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the resource share.
  final pulumi.Input<String>? resourceShareArn;

  /// Creates a new [PrincipalAssociationState].
  /// [principal] The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShareArn] The Amazon Resource Name (ARN) of the resource share.
  PrincipalAssociationState({
    this.principal,
    this.region,
    this.resourceShareArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal,
      'region': ?region,
      'resourceShareArn': ?resourceShareArn,
    };
  }

  factory PrincipalAssociationState.fromMap(Map<String, dynamic> map) {
    return PrincipalAssociationState(
      principal: (() {
        final guardedValue = map['principal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceShareArn: (() {
        final guardedValue = map['resourceShareArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
