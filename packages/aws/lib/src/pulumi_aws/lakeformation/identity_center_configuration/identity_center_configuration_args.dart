// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IdentityCenterConfiguration.
class IdentityCenterConfigurationArgs {
  /// Identifier for the Data Catalog.
  /// By default, the account ID.
  final Input<String>? catalogId;

  /// ARN of the IAM Identity Center Instance to associate.
  ///
  /// The following arguments are optional:
  final Input<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  IdentityCenterConfigurationArgs({
    this.catalogId,
    required this.instanceArn,
    this.region,
  });

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
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
