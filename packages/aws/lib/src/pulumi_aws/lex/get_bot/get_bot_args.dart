// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBot.
class GetBotArgs {
  /// Name of the bot. The name is case sensitive.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version or alias of the bot.
  final Input<String>? version;

  GetBotArgs({
    required this.name,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetBotArgs.fromMap(Map<String, dynamic> map) {
    return GetBotArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
