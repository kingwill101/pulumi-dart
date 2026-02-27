// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_permissions_capabilities/custom_permissions_capabilities.dart';

/// The set of arguments for CustomPermissions.
class CustomPermissionsArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Actions to include in the custom permissions profile. See capabilities.
  final Input<CustomPermissionsCapabilities> capabilities;

  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  final Input<String> customPermissionsName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CustomPermissionsArgs({
    this.awsAccountId,
    required this.capabilities,
    required this.customPermissionsName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['capabilities'] = Input.mapInputValue<CustomPermissionsCapabilities,
        Map<String, dynamic>>(capabilities, (value) => value.toMap());
    map['customPermissionsName'] = customPermissionsName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CustomPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return CustomPermissionsArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      capabilities:
          Input.asInput<CustomPermissionsCapabilities>(map['capabilities']),
      customPermissionsName:
          Input.asInput<String>(map['customPermissionsName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
