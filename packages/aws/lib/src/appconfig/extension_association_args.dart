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
    required String extensionArn,
    Map<String, String>? parameters,
    String? region,
    required String resourceArn,
  }) : extensionArn = pulumi.Input.asInput<String>(extensionArn),
       parameters = pulumi.Input.asOptionalInput<Map<String, String>>(
         parameters,
       ),
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
      extensionArn: map['extensionArn'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
