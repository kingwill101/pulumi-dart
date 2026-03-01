// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_action.dart';
import 'app_version_snapshot_guardrail_code_callback.dart';
import 'app_version_snapshot_guardrail_content_filter.dart';
import 'app_version_snapshot_guardrail_llm_policy.dart';
import 'app_version_snapshot_guardrail_llm_prompt_security.dart';
import 'app_version_snapshot_guardrail_model_safety.dart';

class AppVersionSnapshotGuardrail {
  /// (Output)
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailAction>? actions;

  /// (Output)
  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailCodeCallback>? codeCallbacks;

  /// (Output)
  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailContentFilter>? contentFilters;

  /// (Output)
  /// Timestamp when the toolset was created.
  final String? createTime;

  /// The description of the app version.
  final String? description;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// Whether the guardrail is enabled.
  final bool? enabled;

  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final String? etag;

  /// (Output)
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailLlmPolicy>? llmPolicies;

  /// (Output)
  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailLlmPromptSecurity>? llmPromptSecurities;

  /// (Output)
  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailModelSafety>? modelSafeties;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// Timestamp when the toolset was last updated.
  final String? updateTime;

  /// Creates a new [AppVersionSnapshotGuardrail].
  /// [actions] (Output)
  /// [codeCallbacks] (Output)
  /// [contentFilters] (Output)
  /// [createTime] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [enabled] (Output)
  /// [etag] (Output)
  /// [llmPolicies] (Output)
  /// [llmPromptSecurities] (Output)
  /// [modelSafeties] (Output)
  /// [name] (Output)
  /// [updateTime] (Output)
  AppVersionSnapshotGuardrail({
    this.actions,
    this.codeCallbacks,
    this.contentFilters,
    this.createTime,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.llmPolicies,
    this.llmPromptSecurities,
    this.modelSafeties,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailAction,
              Map<String, dynamic>
            >(actions!, (value) => value.toMap()),
      'codeCallbacks': ?codeCallbacks == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailCodeCallback,
              Map<String, dynamic>
            >(codeCallbacks!, (value) => value.toMap()),
      'contentFilters': ?contentFilters == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailContentFilter,
              Map<String, dynamic>
            >(contentFilters!, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'llmPolicies': ?llmPolicies == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailLlmPolicy,
              Map<String, dynamic>
            >(llmPolicies!, (value) => value.toMap()),
      'llmPromptSecurities': ?llmPromptSecurities == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailLlmPromptSecurity,
              Map<String, dynamic>
            >(llmPromptSecurities!, (value) => value.toMap()),
      'modelSafeties': ?modelSafeties == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrailModelSafety,
              Map<String, dynamic>
            >(modelSafeties!, (value) => value.toMap()),
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory AppVersionSnapshotGuardrail.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrail(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrailAction>(
              map['actions'],
              (value) => AppVersionSnapshotGuardrailAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      codeCallbacks: map['codeCallbacks'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallback>(
              map['codeCallbacks'],
              (value) => AppVersionSnapshotGuardrailCodeCallback.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      contentFilters: map['contentFilters'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrailContentFilter>(
              map['contentFilters'],
              (value) => AppVersionSnapshotGuardrailContentFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      llmPolicies: map['llmPolicies'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPolicy>(
              map['llmPolicies'],
              (value) => AppVersionSnapshotGuardrailLlmPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      llmPromptSecurities: map['llmPromptSecurities'] == null
          ? null
          : pulumi
                .Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurity>(
              map['llmPromptSecurities'],
              (value) => AppVersionSnapshotGuardrailLlmPromptSecurity.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      modelSafeties: map['modelSafeties'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrailModelSafety>(
              map['modelSafeties'],
              (value) => AppVersionSnapshotGuardrailModelSafety.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
