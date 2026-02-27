import 'package:pulumi/pulumi.dart' hide Config;
import 'glossary_args.dart';
import 'glossary_input_config_response.dart';
import 'language_code_pair_response.dart';
import 'language_codes_set_response.dart';

/// Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.
class Glossary extends CustomResource {
  /// Optional. The display name of the glossary.
  late final Output<String> displayName;

  /// When the glossary creation was finished.
  late final Output<String> endTime;

  /// The number of entries defined in the glossary.
  late final Output<int> entryCount;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  late final Output<GlossaryInputConfigResponse> inputConfig;

  /// Used with equivalent term set glossaries.
  late final Output<LanguageCodesSetResponse> languageCodesSet;

  /// Used with unidirectional glossaries.
  late final Output<LanguageCodePairResponse> languagePair;
  late final Output<String> location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// When CreateGlossary was called.
  late final Output<String> submitTime;

  Glossary(
    String name, {
    GlossaryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3:Glossary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.endTime = registerOutput<String>('endTime');
    this.entryCount = registerOutput<int>('entryCount');
    this.inputConfig =
        registerOutput<GlossaryInputConfigResponse>('inputConfig');
    this.languageCodesSet =
        registerOutput<LanguageCodesSetResponse>('languageCodesSet');
    this.languagePair =
        registerOutput<LanguageCodePairResponse>('languagePair');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.submitTime = registerOutput<String>('submitTime');
  }
}
