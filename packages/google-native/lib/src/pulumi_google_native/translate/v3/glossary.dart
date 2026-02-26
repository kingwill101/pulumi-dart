import 'package:pulumi/pulumi.dart';
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
    this.displayName = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.entryCount = Output.createUnknown<int>();
    this.inputConfig = Output.createUnknown<GlossaryInputConfigResponse>();
    this.languageCodesSet = Output.createUnknown<LanguageCodesSetResponse>();
    this.languagePair = Output.createUnknown<LanguageCodePairResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.submitTime = Output.createUnknown<String>();
  }
}
