// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExtensionAssociation resources.
class ExtensionAssociationState {
  /// ARN of the AppConfig Extension Association.
  final pulumi.Input<String?>? arn;
  /// ARN of the extension defined in the association.
  final pulumi.Input<String?>? extensionArn;
  /// Version number for the extension defined in the association.
  final pulumi.Input<int?>? extensionVersion;
  /// Parameter names and values defined for the association.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the application, configuration profile, or environment to associate with the extension.
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [ExtensionAssociationState].
  /// [arn] ARN of the AppConfig Extension Association.
  /// [extensionArn] ARN of the extension defined in the association.
  /// [extensionVersion] Version number for the extension defined in the association.
  /// [parameters] Parameter names and values defined for the association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the application, configuration profile, or environment to associate with the extension.
  const ExtensionAssociationState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionArn: (() { final guardedValue = map['extensionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionVersion: (() { final guardedValue = map['extensionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
