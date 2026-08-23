// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_extension_association_extension_association_args_doc}
/// The set of arguments for ExtensionAssociation.
/// {@endtemplate}
/// {@macro pulumi_appconfig_extension_association_extension_association_args_doc}
class ExtensionAssociationArgs {
  /// ARN of the extension defined in the association.
  final pulumi.Input<String> extensionArn;
  /// Parameter names and values defined for the association.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the application, configuration profile, or environment to associate with the extension.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ExtensionAssociationArgs].
  /// [extensionArn] ARN of the extension defined in the association.
  /// [parameters] Parameter names and values defined for the association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the application, configuration profile, or environment to associate with the extension.
  const ExtensionAssociationArgs({
    required this.extensionArn,
    this.parameters,
    this.region,
    required this.resourceArn,
  });

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
      extensionArn: pulumi.Input.fromValue(map['extensionArn'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
