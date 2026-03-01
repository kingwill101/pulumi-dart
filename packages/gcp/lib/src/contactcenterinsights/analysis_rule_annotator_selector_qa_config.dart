// ignore_for_file: unused_element, unnecessary_cast

import 'analysis_rule_annotator_selector_qa_config_scorecard_list.dart';

class AnalysisRuleAnnotatorSelectorQaConfig {
  /// Container for a list of scorecards.
  /// Structure is documented below.
  final AnalysisRuleAnnotatorSelectorQaConfigScorecardList? scorecardList;

  /// Creates a new [AnalysisRuleAnnotatorSelectorQaConfig].
  /// [scorecardList] Container for a list of scorecards.
  AnalysisRuleAnnotatorSelectorQaConfig({this.scorecardList});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scorecardList': ?scorecardList == null ? null : scorecardList!.toMap(),
    };
  }

  factory AnalysisRuleAnnotatorSelectorQaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalysisRuleAnnotatorSelectorQaConfig(
      scorecardList: map['scorecardList'] == null
          ? null
          : AnalysisRuleAnnotatorSelectorQaConfigScorecardList.fromMap(
              (map['scorecardList'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
