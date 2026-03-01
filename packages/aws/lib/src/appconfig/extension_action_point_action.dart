// ignore_for_file: unused_element, unnecessary_cast


class ExtensionActionPointAction {
  /// Information about the action.
  final String? description;
  /// The action name.
  final String name;
  /// An Amazon Resource Name (ARN) for an Identity and Access Management assume role.
  final String? roleArn;
  /// The extension URI associated to the action point in the extension definition. The URI can be an Amazon Resource Name (ARN) for one of the following: an Lambda function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.
  final String uri;

  /// Creates a new [ExtensionActionPointAction].
  /// [description] Information about the action.
  /// [name] The action name.
  /// [roleArn] An Amazon Resource Name (ARN) for an Identity and Access Management assume role.
  /// [uri] The extension URI associated to the action point in the extension definition. The URI can be an Amazon Resource Name (ARN) for one of the following: an Lambda function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.
  ExtensionActionPointAction({
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
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      uri: map['uri'] as String,
    );
  }
}

