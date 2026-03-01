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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<CustomPermissionsCapabilities>? capabilities,
    pulumi.Output<String>? customPermissionsName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      capabilities = pulumi.Input.asOptionalInput<CustomPermissionsCapabilities>(capabilities),
      customPermissionsName = pulumi.Input.asOptionalInput<String>(customPermissionsName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<CustomPermissionsCapabilities>(CustomPermissionsCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())),
      customPermissionsName: map['customPermissionsName'] == null ? null : pulumi.Output.create<String>(map['customPermissionsName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

