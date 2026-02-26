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

  ExtensionActionPointAction({
    this.description,
    required this.name,
    this.roleArn,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory ExtensionActionPointAction.fromMap(Map<String, dynamic> map) {
    return ExtensionActionPointAction(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      uri: map['uri'] as String,
    );
  }
}
