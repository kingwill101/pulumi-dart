// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../generator_summarization_context_few_shot_example_summarization_section_list_summarization_section/generator_summarization_context_few_shot_example_summarization_section_list_summarization_section.dart';

class GeneratorSummarizationContextFewShotExampleSummarizationSectionList {
  /// Optional. Summarization sections.
  /// Structure is documented below.
  final List<
          GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection>?
      summarizationSections;

  GeneratorSummarizationContextFewShotExampleSummarizationSectionList({
    this.summarizationSections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final summarizationSectionsValue = summarizationSections;
    if (summarizationSectionsValue != null) {
      map['summarizationSections'] = pulumi.Input.encodeList<
          GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection,
          Map<String,
              dynamic>>(summarizationSectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GeneratorSummarizationContextFewShotExampleSummarizationSectionList.fromMap(
      Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleSummarizationSectionList(
      summarizationSections: map['summarizationSections'] == null
          ? null
          : pulumi.Input.decodeList<
                  GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection>(
              map['summarizationSections'],
              (value) =>
                  GeneratorSummarizationContextFewShotExampleSummarizationSectionListSummarizationSection
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
