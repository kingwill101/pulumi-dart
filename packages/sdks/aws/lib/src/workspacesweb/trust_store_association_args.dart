// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_trust_store_association_trust_store_association_args_doc}
/// The set of arguments for TrustStoreAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_trust_store_association_trust_store_association_args_doc}
class TrustStoreAssociationArgs {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  final pulumi.Input<String> trustStoreArn;

  /// Creates a new [TrustStoreAssociationArgs].
  /// [portalArn] ARN of the portal to associate with the trust store. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustStoreArn] ARN of the trust store to associate with the portal. Forces replacement if changed.
  TrustStoreAssociationArgs({
    required this.portalArn,
    this.region,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': portalArn,
      'region': ?region,
      'trustStoreArn': trustStoreArn,
    };
  }

  factory TrustStoreAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreAssociationArgs(
      portalArn: (map['portalArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      trustStoreArn: (map['trustStoreArn'] as String).input(),
    );
  }
}

