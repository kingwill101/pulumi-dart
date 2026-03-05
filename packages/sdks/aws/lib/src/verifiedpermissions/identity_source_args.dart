// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_source_configuration.dart';

/// {@template pulumi_verifiedpermissions_identity_source_identity_source_args_doc}
/// The set of arguments for IdentitySource.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_identity_source_identity_source_args_doc}
class IdentitySourceArgs {
  /// Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  final pulumi.Input<IdentitySourceConfiguration> configuration;
  /// Specifies the ID of the policy store in which you want to store this identity source.
  final pulumi.Input<String> policyStoreId;
  /// Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  final pulumi.Input<String>? principalEntityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IdentitySourceArgs].
  /// [configuration] Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  /// [policyStoreId] Specifies the ID of the policy store in which you want to store this identity source.
  /// [principalEntityType] Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IdentitySourceArgs({
    required this.configuration,
    required this.policyStoreId,
    this.principalEntityType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<IdentitySourceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'policyStoreId': policyStoreId,
      'principalEntityType': ?principalEntityType,
      'region': ?region,
    };
  }

  factory IdentitySourceArgs.fromMap(Map<String, dynamic> map) {
    return IdentitySourceArgs(
      configuration: pulumi.Input.fromValue(IdentitySourceConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      policyStoreId: pulumi.Input.fromValue(map['policyStoreId'] as String),
      principalEntityType: (() { final guardedValue = map['principalEntityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

