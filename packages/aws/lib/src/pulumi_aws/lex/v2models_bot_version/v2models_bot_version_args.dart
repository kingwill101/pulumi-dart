// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_bot_version_locale_specification/v2models_bot_version_locale_specification.dart';
import '../v2models_bot_version_timeouts/v2models_bot_version_timeouts.dart';

/// The set of arguments for V2modelsBotVersion.
class V2modelsBotVersionArgs {
  /// Idientifier of the bot to create the version for.
  final Input<String> botId;

  /// Version number assigned to the version.
  final Input<String>? botVersion;

  /// A description of the version. Use the description to help identify the version in lists.
  /// * `sourceBotVersion` - (Required) The version of a bot used for a bot locale. Valid values: `DRAFT`, a numeric version.
  final Input<String>? description;

  /// Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  final Input<Map<String, V2modelsBotVersionLocaleSpecification>>
      localeSpecification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<V2modelsBotVersionTimeouts>? timeouts;

  V2modelsBotVersionArgs({
    required this.botId,
    this.botVersion,
    this.description,
    required this.localeSpecification,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['botId'] = botId;
    final botVersionValue = botVersion;
    if (botVersionValue != null) {
      map['botVersion'] = botVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['localeSpecification'] = Input.mapInputValue<
            Map<String, V2modelsBotVersionLocaleSpecification>,
            Map<String, Map<String, dynamic>>>(
        localeSpecification,
        (value) => Input.encodeMapValues<V2modelsBotVersionLocaleSpecification,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<V2modelsBotVersionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsBotVersionArgs.fromMap(Map<String, dynamic> map) {
    return V2modelsBotVersionArgs(
      botId: Input.asInput<String>(map['botId']),
      botVersion: Input.asOptionalInput<String>(map['botVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      localeSpecification:
          Input.asInput<Map<String, V2modelsBotVersionLocaleSpecification>>(
              map['localeSpecification']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts:
          Input.asOptionalInput<V2modelsBotVersionTimeouts>(map['timeouts']),
    );
  }
}
