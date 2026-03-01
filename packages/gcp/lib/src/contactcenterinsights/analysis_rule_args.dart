// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_rule_annotator_selector.dart';

/// {@template pulumi_contactcenterinsights_analysis_rule_analysis_rule_args_doc}
/// The set of arguments for AnalysisRule.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_analysis_rule_analysis_rule_args_doc}
class AnalysisRuleArgs {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive and saved as a draft.
  final pulumi.Input<bool>? active;

  /// Percentage of conversations that we should apply this analysis setting
  /// automatically, between [0, 1]. For example, 0.1 means 10%. Conversations
  /// are sampled in a determenestic way. The original runtime_percentage &
  /// upload percentage will be replaced by defining filters on the conversation.
  final pulumi.Input<double>? analysisPercentage;

  /// Selector of all available annotators and phrase matchers to run.
  /// Structure is documented below.
  final pulumi.Input<AnalysisRuleAnnotatorSelector>? annotatorSelector;

  /// Filter for the conversations that should apply this analysis
  /// rule. An empty filter means this analysis rule applies to all
  /// conversations.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  final pulumi.Input<String>? conversationFilter;

  /// Display Name of the analysis rule.
  final pulumi.Input<String>? displayName;

  /// Location of the resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AnalysisRuleArgs].
  /// [active] If true, apply this rule to conversations. Otherwise, this rule is
  /// [analysisPercentage] Percentage of conversations that we should apply this analysis setting
  /// [annotatorSelector] Selector of all available annotators and phrase matchers to run.
  /// [conversationFilter] Filter for the conversations that should apply this analysis
  /// [displayName] Display Name of the analysis rule.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  AnalysisRuleArgs({
    bool? active,
    double? analysisPercentage,
    AnalysisRuleAnnotatorSelector? annotatorSelector,
    String? conversationFilter,
    String? displayName,
    required String location,
    String? project,
  }) : active = pulumi.Input.asOptionalInput<bool>(active),
       analysisPercentage = pulumi.Input.asOptionalInput<double>(
         analysisPercentage,
       ),
       annotatorSelector =
           pulumi.Input.asOptionalInput<AnalysisRuleAnnotatorSelector>(
             annotatorSelector,
           ),
       conversationFilter = pulumi.Input.asOptionalInput<String>(
         conversationFilter,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'analysisPercentage': ?analysisPercentage,
      'annotatorSelector':
          ?pulumi.Input.mapOptionalInputValue<
            AnalysisRuleAnnotatorSelector,
            Map<String, dynamic>
          >(annotatorSelector, (value) => value.toMap()),
      'conversationFilter': ?conversationFilter,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
    };
  }

  factory AnalysisRuleArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      analysisPercentage: map['analysisPercentage'] == null
          ? null
          : map['analysisPercentage'] as double,
      annotatorSelector: map['annotatorSelector'] == null
          ? null
          : AnalysisRuleAnnotatorSelector.fromMap(
              (map['annotatorSelector'] as Map).cast<String, dynamic>(),
            ),
      conversationFilter: map['conversationFilter'] == null
          ? null
          : map['conversationFilter'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
