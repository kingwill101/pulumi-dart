// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scoping_question_response.dart';

/// Result data returned by getReportScopingQuestions.
class GetReportScopingQuestionsResult {
  /// List of scoping questions.
  final List<ScopingQuestionResponse>? questions;

  /// Creates a new [GetReportScopingQuestionsResult].
  /// [questions] List of scoping questions.
  GetReportScopingQuestionsResult({this.questions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'questions': ?(() {
        final guardedValue = questions;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ScopingQuestionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetReportScopingQuestionsResult.fromMap(Map<String, dynamic> map) {
    return GetReportScopingQuestionsResult(
      questions: (() {
        final guardedValue = map['questions'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ScopingQuestionResponse>(
          guardedValue,
          (value) => ScopingQuestionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
