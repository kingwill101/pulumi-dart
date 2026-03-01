// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_extension_association_extension_association_args_doc}
/// The set of arguments for ExtensionAssociation.
/// {@endtemplate}
/// {@macro pulumi_appconfig_extension_association_extension_association_args_doc}
class ExtensionAssociationArgs {
  /// The ARN of the extension defined in the association.
  final pulumi.Input<String> extensionArn;
  /// The parameter names and values defined for the association.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the application, configuration profile, or environment to associate with the extension.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ExtensionAssociationArgs].
  /// [extensionArn] The ARN of the extension defined in the association.
  /// [parameters] The parameter names and values defined for the association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ARN of the application, configuration profile, or environment to associate with the extension.
  ExtensionAssociationArgs({
    required pulumi.Output<String> extensionArn,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceArn,
  }) :
      extensionArn = pulumi.Input.asInput<String>(extensionArn),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionArn': extensionArn,
      'parameters': ?parameters,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ExtensionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionAssociationArgs(
      extensionArn: pulumi.Output.create<String>(map['extensionArn'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}

