// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrustStoreAssociation resources.
class TrustStoreAssociationState {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String>? trustStoreArn;

  /// Creates a new [TrustStoreAssociationState].
  /// [portalArn] ARN of the portal to associate with the trust store. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustStoreArn] ARN of the trust store to associate with the portal. Forces replacement if changed.
  TrustStoreAssociationState({
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? trustStoreArn,
  }) :
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      trustStoreArn = pulumi.Input.asOptionalInput<String>(trustStoreArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory TrustStoreAssociationState.fromMap(Map<String, dynamic> map) {
    return TrustStoreAssociationState(
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      trustStoreArn: map['trustStoreArn'] == null ? null : pulumi.Output.create<String>(map['trustStoreArn'] as String),
    );
  }
}

