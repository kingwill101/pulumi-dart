// ignore_for_file: unused_element, unnecessary_cast

class AnalysisRuleAnnotatorSelectorQaConfigScorecardList {
  /// List of QaScorecardRevisions.
  final List<String>? qaScorecardRevisions;

  /// Creates a new [AnalysisRuleAnnotatorSelectorQaConfigScorecardList].
  /// [qaScorecardRevisions] List of QaScorecardRevisions.
  AnalysisRuleAnnotatorSelectorQaConfigScorecardList({
    this.qaScorecardRevisions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final qaScorecardRevisionsValue = qaScorecardRevisions;
    if (qaScorecardRevisionsValue != null) {
      map['qaScorecardRevisions'] = qaScorecardRevisionsValue;
    }
    return map;
  }

  factory AnalysisRuleAnnotatorSelectorQaConfigScorecardList.fromMap(
      Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelectorQaConfigScorecardList(
      qaScorecardRevisions: map['qaScorecardRevisions'] == null
          ? null
          : (map['qaScorecardRevisions'] as List).cast<String>(),
    );
  }
}
