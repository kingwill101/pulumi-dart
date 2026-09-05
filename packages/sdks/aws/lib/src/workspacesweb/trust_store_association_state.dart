// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrustStoreAssociation resources.
class TrustStoreAssociationState {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String?>? trustStoreArn;

  /// Creates a new [TrustStoreAssociationState].
  /// [portalArn] ARN of the portal to associate with the trust store. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustStoreArn] ARN of the trust store to associate with the portal. Forces replacement if changed.
  const TrustStoreAssociationState({
    this.portalArn,
    this.region,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory TrustStoreAssociationState.fromMap(Map<String, dynamic> map) {
    return TrustStoreAssociationState(
      portalArn: (() { final guardedValue = map['portalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreArn: (() { final guardedValue = map['trustStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
