import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_bot_version_locale_specification/v2models_bot_version_locale_specification.dart';
import '../v2models_bot_version_timeouts/v2models_bot_version_timeouts.dart';
import 'v2models_bot_version_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot Version.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot Version using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBotVersion:V2modelsBotVersion example id-12345678,1
/// ```
class V2modelsBotVersion extends pulumi.CustomResource {
  /// Idientifier of the bot to create the version for.
  late final pulumi.Output<String> botId;

  /// Version number assigned to the version.
  late final pulumi.Output<String> botVersion;

  /// A description of the version. Use the description to help identify the version in lists.
  /// * `sourceBotVersion` - (Required) The version of a bot used for a bot locale. Valid values: `DRAFT`, a numeric version.
  late final pulumi.Output<String?> description;

  /// Specifies the locales that Amazon Lex adds to this version. You can choose the draft version or any other previously published version for each locale. When you specify a source version, the locale data is copied from the source version to the new version.
  late final pulumi.Output<Map<String, V2modelsBotVersionLocaleSpecification>>
      localeSpecification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<V2modelsBotVersionTimeouts?> timeouts;

  V2modelsBotVersion(
    String name, {
    V2modelsBotVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBotVersion:V2modelsBotVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.description = registerOutput<String?>('description');
    this.localeSpecification =
        registerOutput<Map<String, V2modelsBotVersionLocaleSpecification>>(
            'localeSpecification');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<V2modelsBotVersionTimeouts?>('timeouts');
  }
}
