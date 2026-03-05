// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsBotMember {
  /// (Required) - Alias ID of a bot that is a member of this network of bots.
  final pulumi.Input<String> aliasId;
  /// (Required) - Alias name of a bot that is a member of this network of bots.
  final pulumi.Input<String> aliasName;
  /// (Required) - Unique ID of a bot that is a member of this network of bots.
  final pulumi.Input<String> id;
  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String> name;
  /// (Required) - Version of a bot that is a member of this network of bots.
  final pulumi.Input<String> version;

  /// Creates a new [V2modelsBotMember].
  /// [aliasId] (Required) - Alias ID of a bot that is a member of this network of bots.
  /// [aliasName] (Required) - Alias name of a bot that is a member of this network of bots.
  /// [id] (Required) - Unique ID of a bot that is a member of this network of bots.
  /// [name] Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  /// [version] (Required) - Version of a bot that is a member of this network of bots.
  V2modelsBotMember({
    required this.aliasId,
    required this.aliasName,
    required this.id,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasId': aliasId,
      'aliasName': aliasName,
      'id': id,
      'name': name,
      'version': version,
    };
  }

  factory V2modelsBotMember.fromMap(Map<String, dynamic> map) {
    return V2modelsBotMember(
      aliasId: pulumi.Input.fromValue(map['aliasId'] as String),
      aliasName: pulumi.Input.fromValue(map['aliasName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

