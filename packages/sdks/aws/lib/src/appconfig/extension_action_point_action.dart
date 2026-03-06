// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtensionActionPointAction {
  /// Information about the action.
  final pulumi.Input<String>? description;
  /// The action name.
  final pulumi.Input<String> name;
  /// An Amazon Resource Name (ARN) for an Identity and Access Management assume role.
  final pulumi.Input<String>? roleArn;
  /// The extension URI associated to the action point in the extension definition. The URI can be an Amazon Resource Name (ARN) for one of the following: an Lambda function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.
  final pulumi.Input<String> uri;

  /// Creates a new [ExtensionActionPointAction].
  /// [description] Information about the action.
  /// [name] The action name.
  /// [roleArn] An Amazon Resource Name (ARN) for an Identity and Access Management assume role.
  /// [uri] The extension URI associated to the action point in the extension definition. The URI can be an Amazon Resource Name (ARN) for one of the following: an Lambda function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.
  const ExtensionActionPointAction({
    this.description,
    required this.name,
    this.roleArn,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'roleArn': ?roleArn,
      'uri': uri,
    };
  }

  factory ExtensionActionPointAction.fromMap(Map<String, dynamic> map) {
    return ExtensionActionPointAction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

