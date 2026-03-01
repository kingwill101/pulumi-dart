// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_permissions_capabilities.dart';

/// {@template pulumi_quicksight_custom_permissions_custom_permissions_args_doc}
/// The set of arguments for CustomPermissions.
/// {@endtemplate}
/// {@macro pulumi_quicksight_custom_permissions_custom_permissions_args_doc}
class CustomPermissionsArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Actions to include in the custom permissions profile. See capabilities.
  final pulumi.Input<CustomPermissionsCapabilities> capabilities;
  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomPermissionsArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [capabilities] Actions to include in the custom permissions profile. See capabilities.
  /// [customPermissionsName] Custom permissions profile name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CustomPermissionsArgs({
    pulumi.Output<String>? awsAccountId,
    required pulumi.Output<CustomPermissionsCapabilities> capabilities,
    required pulumi.Output<String> customPermissionsName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      capabilities = pulumi.Input.asInput<CustomPermissionsCapabilities>(capabilities),
      customPermissionsName = pulumi.Input.asInput<String>(customPermissionsName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'capabilities': pulumi.Input.mapInputValue<CustomPermissionsCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'customPermissionsName': customPermissionsName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CustomPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return CustomPermissionsArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      capabilities: pulumi.Output.create<CustomPermissionsCapabilities>(CustomPermissionsCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())),
      customPermissionsName: pulumi.Output.create<String>(map['customPermissionsName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

