// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_bot_version_locale_specification.dart';
import 'v2models_bot_version_timeouts.dart';

/// {@template pulumi_lex_v2models_bot_version_v2models_bot_version_args_doc}
/// The set of arguments for V2modelsBotVersion.
/// {@endtemplate}
/// {@macro pulumi_lex_v2models_bot_version_v2models_bot_version_args_doc}
class V2modelsBotVersionArgs {
  /// Idientifier of the bot to create the version for.
  final pulumi.Input<String> botId;
  /// Version number assigned to the version.
  final pulumi.Input<String>? botVersion;
  /// A description of the version. Use the description to help identify the version in lists.
  /// * `sourceBotVersion` - (Required) The version of a bot used for a bot locale. Valid values: `DRAFT`, a numeric version.
  final pulumi.Input<String>? description;
  /// Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  final pulumi.Input<Map<String, V2modelsBotVersionLocaleSpecification>> localeSpecification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<V2modelsBotVersionTimeouts>? timeouts;

  /// Creates a new [V2modelsBotVersionArgs].
  /// [botId] Idientifier of the bot to create the version for.
  /// [botVersion] Version number assigned to the version.
  /// [description] A description of the version. Use the description to help identify the version in lists.
  /// [localeSpecification] Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  V2modelsBotVersionArgs({
    required this.botId,
    this.botVersion,
    this.description,
    required this.localeSpecification,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': botId,
      'botVersion': ?botVersion,
      'description': ?description,
      'localeSpecification': pulumi.Input.mapInputValue<Map<String, V2modelsBotVersionLocaleSpecification>, Map<String, Map<String, dynamic>>>(localeSpecification, (value) => pulumi.Input.encodeMapValues<V2modelsBotVersionLocaleSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsBotVersionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory V2modelsBotVersionArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsBotVersionArgs(
      botId: pulumi.Input.fromValue(map['botId'] as String),
      botVersion: (() { final guardedValue = map['botVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localeSpecification: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<V2modelsBotVersionLocaleSpecification>(map['localeSpecification']!, (value) => V2modelsBotVersionLocaleSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsBotVersionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

