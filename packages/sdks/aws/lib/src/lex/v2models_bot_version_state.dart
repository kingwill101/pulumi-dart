// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_bot_version_locale_specification.dart';
import 'v2models_bot_version_timeouts.dart';

/// Input properties used for looking up and filtering V2modelsBotVersion resources.
class V2modelsBotVersionState {
  /// Idientifier of the bot to create the version for.
  final pulumi.Input<String>? botId;
  /// Version number assigned to the version.
  final pulumi.Input<String>? botVersion;
  /// A description of the version. Use the description to help identify the version in lists.
  /// * `sourceBotVersion` - (Required) The version of a bot used for a bot locale. Valid values: `DRAFT`, a numeric version.
  final pulumi.Input<String>? description;
  /// Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  final pulumi.Input<Map<String, V2modelsBotVersionLocaleSpecification>>? localeSpecification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<V2modelsBotVersionTimeouts>? timeouts;

  /// Creates a new [V2modelsBotVersionState].
  /// [botId] Idientifier of the bot to create the version for.
  /// [botVersion] Version number assigned to the version.
  /// [description] A description of the version. Use the description to help identify the version in lists.
  /// [localeSpecification] Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  V2modelsBotVersionState({
    this.botId,
    this.botVersion,
    this.description,
    this.localeSpecification,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botId': ?botId,
      'botVersion': ?botVersion,
      'description': ?description,
      'localeSpecification': ?pulumi.Input.mapOptionalInputValue<Map<String, V2modelsBotVersionLocaleSpecification>, Map<String, Map<String, dynamic>>>(localeSpecification, (value) => pulumi.Input.encodeMapValues<V2modelsBotVersionLocaleSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<V2modelsBotVersionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory V2modelsBotVersionState.fromMap(Map<String, dynamic> map) {
    return V2modelsBotVersionState(
      botId: map['botId'] == null ? null : ((map['botId'] as String).input()).input(),
      botVersion: map['botVersion'] == null ? null : ((map['botVersion'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      localeSpecification: map['localeSpecification'] == null ? null : ((pulumi.Input.decodeMapValues<V2modelsBotVersionLocaleSpecification>(map['localeSpecification']!, (value) => V2modelsBotVersionLocaleSpecification.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((V2modelsBotVersionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

