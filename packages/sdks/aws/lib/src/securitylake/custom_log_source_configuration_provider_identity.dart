// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomLogSourceConfigurationProviderIdentity {
  /// The external ID used to estalish trust relationship with the AWS identity.
  final pulumi.Input<String> externalId;
  /// The AWS identity principal.
  final pulumi.Input<String> principal;

  /// Creates a new [CustomLogSourceConfigurationProviderIdentity].
  /// [externalId] The external ID used to estalish trust relationship with the AWS identity.
  /// [principal] The AWS identity principal.
  CustomLogSourceConfigurationProviderIdentity({
    required this.externalId,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': externalId,
      'principal': principal,
    };
  }

  factory CustomLogSourceConfigurationProviderIdentity.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceConfigurationProviderIdentity(
      externalId: (map['externalId'] as String).input(),
      principal: (map['principal'] as String).input(),
    );
  }
}

