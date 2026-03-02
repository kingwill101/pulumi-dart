// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExtensionAssociation resources.
class ExtensionAssociationState {
  /// ARN of the AppConfig Extension Association.
  final pulumi.Input<String>? arn;
  /// The ARN of the extension defined in the association.
  final pulumi.Input<String>? extensionArn;
  /// The version number for the extension defined in the association.
  final pulumi.Input<int>? extensionVersion;
  /// The parameter names and values defined for the association.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the application, configuration profile, or environment to associate with the extension.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [ExtensionAssociationState].
  /// [arn] ARN of the AppConfig Extension Association.
  /// [extensionArn] The ARN of the extension defined in the association.
  /// [extensionVersion] The version number for the extension defined in the association.
  /// [parameters] The parameter names and values defined for the association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ARN of the application, configuration profile, or environment to associate with the extension.
  ExtensionAssociationState({
    this.arn,
    this.extensionArn,
    this.extensionVersion,
    this.parameters,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'extensionArn': ?extensionArn,
      'extensionVersion': ?extensionVersion,
      'parameters': ?parameters,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory ExtensionAssociationState.fromMap(Map<String, dynamic> map) {
    return ExtensionAssociationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      extensionArn: map['extensionArn'] == null ? null : (map['extensionArn'] as String).input(),
      extensionVersion: map['extensionVersion'] == null ? null : (map['extensionVersion'] as int).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
    );
  }
}

