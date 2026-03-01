// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_action_generative_answer.dart';
import 'app_version_snapshot_guardrail_action_respond_immediately.dart';
import 'app_version_snapshot_guardrail_action_transfer_agent.dart';

class AppVersionSnapshotGuardrailAction {
  /// (Output)
  /// The agent will immediately respond with a generative answer.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailActionGenerativeAnswer>?
  generativeAnswers;

  /// (Output)
  /// The agent will immediately respond with a preconfigured response.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailActionRespondImmediately>?
  respondImmediatelies;

  /// (Output)
  /// The agent will transfer the conversation to a different agent.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailActionTransferAgent>? transferAgents;

  /// Creates a new [AppVersionSnapshotGuardrailAction].
  /// [generativeAnswers] (Output)
  /// [respondImmediatelies] (Output)
  /// [transferAgents] (Output)
  AppVersionSnapshotGuardrailAction({
    this.generativeAnswers,
    this.respondImmediatelies,
    this.transferAgents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeAnswers': ?generativeAnswers == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailActionGenerativeAnswer,
              Map<String, dynamic>
            >(generativeAnswers!, (value) => value.toMap()),
      'respondImmediatelies': ?respondImmediatelies == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailActionRespondImmediately,
              Map<String, dynamic>
            >(respondImmediatelies!, (value) => value.toMap()),
      'transferAgents': ?transferAgents == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailActionTransferAgent,
              Map<String, dynamic>
            >(transferAgents!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotGuardrailAction.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailAction(
      generativeAnswers: map['generativeAnswers'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotGuardrailActionGenerativeAnswer
            >(
              map['generativeAnswers'],
              (value) =>
                  AppVersionSnapshotGuardrailActionGenerativeAnswer.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      respondImmediatelies: map['respondImmediatelies'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotGuardrailActionRespondImmediately
            >(
              map['respondImmediatelies'],
              (value) =>
                  AppVersionSnapshotGuardrailActionRespondImmediately.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      transferAgents: map['transferAgents'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotGuardrailActionTransferAgent
            >(
              map['transferAgents'],
              (value) => AppVersionSnapshotGuardrailActionTransferAgent.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
