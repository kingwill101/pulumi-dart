// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analysis_rule_annotator_selector/analysis_rule_annotator_selector.dart';

/// The set of arguments for AnalysisRule.
class AnalysisRuleArgs {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive and saved as a draft.
  final Input<bool>? active;

  /// Percentage of conversations that we should apply this analysis setting
  /// automatically, between [0, 1]. For example, 0.1 means 10%. Conversations
  /// are sampled in a determenestic way. The original<span pulumi-lang-nodejs=" runtimePercentage " pulumi-lang-dotnet=" RuntimePercentage " pulumi-lang-go=" runtimePercentage " pulumi-lang-python=" runtime_percentage " pulumi-lang-yaml=" runtimePercentage " pulumi-lang-java=" runtimePercentage "> runtime_percentage </span>&
  /// upload percentage will be replaced by defining filters on the conversation.
  final Input<double>? analysisPercentage;

  /// Selector of all available annotators and phrase matchers to run.
  /// Structure is documented below.
  final Input<AnalysisRuleAnnotatorSelector>? annotatorSelector;

  /// Filter for the conversations that should apply this analysis
  /// rule. An empty filter means this analysis rule applies to all
  /// conversations.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  final Input<String>? conversationFilter;

  /// Display Name of the analysis rule.
  final Input<String>? displayName;

  /// Location of the resource.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  AnalysisRuleArgs({
    this.active,
    this.analysisPercentage,
    this.annotatorSelector,
    this.conversationFilter,
    this.displayName,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final analysisPercentageValue = analysisPercentage;
    if (analysisPercentageValue != null) {
      map['analysisPercentage'] = analysisPercentageValue;
    }
    final annotatorSelectorValue = annotatorSelector;
    if (annotatorSelectorValue != null) {
      map['annotatorSelector'] = Input.mapOptionalInputValue<
              AnalysisRuleAnnotatorSelector, Map<String, dynamic>>(
          annotatorSelectorValue, (value) => value.toMap());
    }
    final conversationFilterValue = conversationFilter;
    if (conversationFilterValue != null) {
      map['conversationFilter'] = conversationFilterValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AnalysisRuleArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleArgs(
      active: Input.asOptionalInput<bool>(map['active']),
      analysisPercentage:
          Input.asOptionalInput<double>(map['analysisPercentage']),
      annotatorSelector: Input.asOptionalInput<AnalysisRuleAnnotatorSelector>(
          map['annotatorSelector']),
      conversationFilter:
          Input.asOptionalInput<String>(map['conversationFilter']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
