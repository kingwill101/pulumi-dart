// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_question_choice.dart';
import 'access_package_assignment_policy_question_text.dart';

class AccessPackageAssignmentPolicyQuestion {
  /// One or more blocks configuring a choice to the question, as documented below.
  final List<AccessPackageAssignmentPolicyQuestionChoice>? choices;
  /// Whether this question is required.
  final bool? required;
  /// The sequence number of this question.
  final int? sequence;
  /// A block describing the content of this question, as documented below.
  final AccessPackageAssignmentPolicyQuestionText text;

  /// Creates a new [AccessPackageAssignmentPolicyQuestion].
  /// [choices] One or more blocks configuring a choice to the question, as documented below.
  /// [required] Whether this question is required.
  /// [sequence] The sequence number of this question.
  /// [text] A block describing the content of this question, as documented below.
  AccessPackageAssignmentPolicyQuestion({
    this.choices,
    this.required,
    this.sequence,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'choices': ?choices == null ? null : pulumi.Input.encodeList<AccessPackageAssignmentPolicyQuestionChoice, Map<String, dynamic>>(choices!, (value) => value.toMap()),
      'required': ?required,
      'sequence': ?sequence,
      'text': text.toMap(),
    };
  }

  factory AccessPackageAssignmentPolicyQuestion.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestion(
      choices: map['choices'] == null ? null : pulumi.Input.decodeList<AccessPackageAssignmentPolicyQuestionChoice>(map['choices'], (value) => AccessPackageAssignmentPolicyQuestionChoice.fromMap((value as Map).cast<String, dynamic>())),
      required: map['required'] == null ? null : map['required'] as bool,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      text: AccessPackageAssignmentPolicyQuestionText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

