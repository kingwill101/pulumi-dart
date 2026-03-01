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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? extensionArn,
    pulumi.Output<int>? extensionVersion,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      extensionArn = pulumi.Input.asOptionalInput<String>(extensionArn),
      extensionVersion = pulumi.Input.asOptionalInput<int>(extensionVersion),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      extensionArn: map['extensionArn'] == null ? null : pulumi.Output.create<String>(map['extensionArn'] as String),
      extensionVersion: map['extensionVersion'] == null ? null : pulumi.Output.create<int>(map['extensionVersion'] as int),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}

