import 'package:pulumi/pulumi.dart' hide Config;
import 'glossary_args2.dart';
import 'glossary_input_config_response2.dart';
import 'language_code_pair_response2.dart';
import 'language_codes_set_response2.dart';

/// Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn't exist.
class Glossary2 extends CustomResource {
  /// When the glossary creation was finished.
  late final Output<String> endTime;

  /// The number of entries defined in the glossary.
  late final Output<int> entryCount;

  /// Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
  late final Output<GlossaryInputConfigResponse2> inputConfig;

  /// Used with equivalent term set glossaries.
  late final Output<LanguageCodesSetResponse2> languageCodesSet;

  /// Used with unidirectional glossaries.
  late final Output<LanguageCodePairResponse2> languagePair;
  late final Output<String> location;

  /// The resource name of the glossary. Glossary names have the form `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// When CreateGlossary was called.
  late final Output<String> submitTime;

  Glossary2(
    String name, {
    GlossaryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3beta1:Glossary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.endTime = registerOutput<String>('endTime');
    this.entryCount = registerOutput<int>('entryCount');
    this.inputConfig =
        registerOutput<GlossaryInputConfigResponse2>('inputConfig');
    this.languageCodesSet =
        registerOutput<LanguageCodesSetResponse2>('languageCodesSet');
    this.languagePair =
        registerOutput<LanguageCodePairResponse2>('languagePair');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.submitTime = registerOutput<String>('submitTime');
  }
}
