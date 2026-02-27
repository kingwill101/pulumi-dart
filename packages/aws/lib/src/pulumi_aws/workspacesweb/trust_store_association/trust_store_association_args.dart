// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrustStoreAssociation.
class TrustStoreAssociationArgs {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> trustStoreArn;

  TrustStoreAssociationArgs({
    required this.portalArn,
    this.region,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['trustStoreArn'] = trustStoreArn;
    return map;
  }

  factory TrustStoreAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreAssociationArgs(
      portalArn: pulumi.Input.asInput<String>(map['portalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      trustStoreArn: pulumi.Input.asInput<String>(map['trustStoreArn']),
    );
  }
}
