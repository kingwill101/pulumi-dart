// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scoping_answer.dart';

/// {@template pulumi_appcomplianceautomation_scoping_configuration_args_doc}
/// The set of arguments for ScopingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_scoping_configuration_args_doc}
class ScopingConfigurationArgs {
  /// List of scoping question answers.
  final pulumi.Input<List<ScopingAnswer>>? answers;

  /// Report Name.
  final pulumi.Input<String> reportName;

  /// The scoping configuration of the specific report.
  final pulumi.Input<String>? scopingConfigurationName;

  /// Creates a new [ScopingConfigurationArgs].
  /// [answers] List of scoping question answers.
  /// [reportName] Report Name.
  /// [scopingConfigurationName] The scoping configuration of the specific report.
  ScopingConfigurationArgs({
    this.answers,
    required this.reportName,
    this.scopingConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScopingAnswer>,
            List<Map<String, dynamic>>
          >(
            answers,
            (value) =>
                pulumi.Input.encodeList<ScopingAnswer, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'reportName': reportName,
      'scopingConfigurationName': ?scopingConfigurationName,
    };
  }

  factory ScopingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ScopingConfigurationArgs(
      answers: (() {
        final guardedValue = map['answers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScopingAnswer>(
            guardedValue,
            (value) =>
                ScopingAnswer.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      reportName: pulumi.Input.fromValue(map['reportName'] as String),
      scopingConfigurationName: (() {
        final guardedValue = map['scopingConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
