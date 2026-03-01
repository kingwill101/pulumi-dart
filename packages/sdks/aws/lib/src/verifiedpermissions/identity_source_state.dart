// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_source_configuration.dart';

/// Input properties used for looking up and filtering IdentitySource resources.
class IdentitySourceState {
  /// Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  final pulumi.Input<IdentitySourceConfiguration>? configuration;
  /// Specifies the ID of the policy store in which you want to store this identity source.
  final pulumi.Input<String>? policyStoreId;
  /// Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  final pulumi.Input<String>? principalEntityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IdentitySourceState].
  /// [configuration] Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  /// [policyStoreId] Specifies the ID of the policy store in which you want to store this identity source.
  /// [principalEntityType] Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IdentitySourceState({
    pulumi.Output<IdentitySourceConfiguration>? configuration,
    pulumi.Output<String>? policyStoreId,
    pulumi.Output<String>? principalEntityType,
    pulumi.Output<String>? region,
  }) :
      configuration = pulumi.Input.asOptionalInput<IdentitySourceConfiguration>(configuration),
      policyStoreId = pulumi.Input.asOptionalInput<String>(policyStoreId),
      principalEntityType = pulumi.Input.asOptionalInput<String>(principalEntityType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<IdentitySourceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'policyStoreId': ?policyStoreId,
      'principalEntityType': ?principalEntityType,
      'region': ?region,
    };
  }

  factory IdentitySourceState.fromMap(Map<String, dynamic> map) {
    return IdentitySourceState(
      configuration: map['configuration'] == null ? null : pulumi.Output.create<IdentitySourceConfiguration>(IdentitySourceConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      policyStoreId: map['policyStoreId'] == null ? null : pulumi.Output.create<String>(map['policyStoreId'] as String),
      principalEntityType: map['principalEntityType'] == null ? null : pulumi.Output.create<String>(map['principalEntityType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

