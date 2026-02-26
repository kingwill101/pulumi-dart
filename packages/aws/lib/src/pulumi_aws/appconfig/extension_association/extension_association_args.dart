// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ExtensionAssociation.
class ExtensionAssociationArgs {
  /// The ARN of the extension defined in the association.
  final Input<String> extensionArn;

  /// The parameter names and values defined for the association.
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the application, configuration profile, or environment to associate with the extension.
  final Input<String> resourceArn;

  ExtensionAssociationArgs({
    required this.extensionArn,
    this.parameters,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['extensionArn'] = extensionArn;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ExtensionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionAssociationArgs(
      extensionArn: Input.asInput<String>(map['extensionArn']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
    );
  }
}
