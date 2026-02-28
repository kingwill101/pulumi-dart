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
  IdentityCenterConfigurationArgs({
    String? catalogId,
    required String instanceArn,
    String? region,
  })  : catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
        instanceArn = pulumi.Input.asInput<String>(instanceArn),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['instanceArn'] = instanceArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IdentityCenterConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return IdentityCenterConfigurationArgs(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      instanceArn: map['instanceArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
