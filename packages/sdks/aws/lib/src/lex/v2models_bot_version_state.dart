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
    pulumi.Output<String>? botId,
    pulumi.Output<String>? botVersion,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, V2modelsBotVersionLocaleSpecification>>? localeSpecification,
    pulumi.Output<String>? region,
    pulumi.Output<V2modelsBotVersionTimeouts>? timeouts,
  }) :
      botId = pulumi.Input.asOptionalInput<String>(botId),
      botVersion = pulumi.Input.asOptionalInput<String>(botVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      localeSpecification = pulumi.Input.asOptionalInput<Map<String, V2modelsBotVersionLocaleSpecification>>(localeSpecification),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<V2modelsBotVersionTimeouts>(timeouts);

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
      botId: map['botId'] == null ? null : pulumi.Output.create<String>(map['botId'] as String),
      botVersion: map['botVersion'] == null ? null : pulumi.Output.create<String>(map['botVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      localeSpecification: map['localeSpecification'] == null ? null : pulumi.Output.create<Map<String, V2modelsBotVersionLocaleSpecification>>(pulumi.Input.decodeMapValues<V2modelsBotVersionLocaleSpecification>(map['localeSpecification'], (value) => V2modelsBotVersionLocaleSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<V2modelsBotVersionTimeouts>(V2modelsBotVersionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

