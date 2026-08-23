// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_identity_center_configuration_identity_center_configuration_args_doc}
/// The set of arguments for IdentityCenterConfiguration.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_identity_center_configuration_identity_center_configuration_args_doc}
class IdentityCenterConfigurationArgs {
  /// Identifier for the Data Catalog.
  /// By default, the account ID.
  final pulumi.Input<String>? catalogId;
  /// ARN of the IAM Identity Center Instance to associate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IdentityCenterConfigurationArgs].
  /// [catalogId] Identifier for the Data Catalog.
  /// [instanceArn] ARN of the IAM Identity Center Instance to associate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const IdentityCenterConfigurationArgs({
    this.catalogId,
    required this.instanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'instanceArn': instanceArn,
      'region': ?region,
    };
  }

  factory IdentityCenterConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IdentityCenterConfigurationArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
