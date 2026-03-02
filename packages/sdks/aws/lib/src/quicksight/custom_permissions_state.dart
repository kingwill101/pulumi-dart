// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_permissions_capabilities.dart';

/// Input properties used for looking up and filtering CustomPermissions resources.
class CustomPermissionsState {
  /// ARN of the custom permissions profile.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Actions to include in the custom permissions profile. See capabilities.
  final pulumi.Input<CustomPermissionsCapabilities>? capabilities;
  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CustomPermissionsState].
  /// [arn] ARN of the custom permissions profile.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [capabilities] Actions to include in the custom permissions profile. See capabilities.
  /// [customPermissionsName] Custom permissions profile name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CustomPermissionsState({
    this.arn,
    this.awsAccountId,
    this.capabilities,
    this.customPermissionsName,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'capabilities': ?pulumi.Input.mapOptionalInputValue<CustomPermissionsCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'customPermissionsName': ?customPermissionsName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CustomPermissionsState.fromMap(Map<String, dynamic> map) {
    return CustomPermissionsState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      capabilities: map['capabilities'] == null ? null : (CustomPermissionsCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())).input(),
      customPermissionsName: map['customPermissionsName'] == null ? null : (map['customPermissionsName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

