// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../identity_source_configuration/identity_source_configuration.dart';

/// The set of arguments for IdentitySource.
class IdentitySourceArgs {
  /// Specifies the details required to communicate with the identity provider (IdP) associated with this identity source. See Configuration below.
  final pulumi.Input<IdentitySourceConfiguration> configuration;

  /// Specifies the ID of the policy store in which you want to store this identity source.
  final pulumi.Input<String> policyStoreId;

  /// Specifies the namespace and data type of the principals generated for identities authenticated by the new identity source.
  final pulumi.Input<String>? principalEntityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  IdentitySourceArgs({
    required this.configuration,
    required this.policyStoreId,
    this.principalEntityType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] = pulumi.Input.mapInputValue<
        IdentitySourceConfiguration,
        Map<String, dynamic>>(configuration, (value) => value.toMap());
    map['policyStoreId'] = policyStoreId;
    final principalEntityTypeValue = principalEntityType;
    if (principalEntityTypeValue != null) {
      map['principalEntityType'] = principalEntityTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IdentitySourceArgs.fromMap(Map<String, dynamic> map) {
    return IdentitySourceArgs(
      configuration: pulumi.Input.asInput<IdentitySourceConfiguration>(
          map['configuration']),
      policyStoreId: pulumi.Input.asInput<String>(map['policyStoreId']),
      principalEntityType:
          pulumi.Input.asOptionalInput<String>(map['principalEntityType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
