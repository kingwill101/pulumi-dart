// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_code_callback_after_agent_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_after_model_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_before_agent_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_before_model_callback.dart';

class AppVersionSnapshotGuardrailCodeCallback {
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>? afterAgentCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>? afterModelCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>? beforeAgentCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>? beforeModelCallbacks;

  /// Creates a new [AppVersionSnapshotGuardrailCodeCallback].
  /// [afterAgentCallbacks] (Output)
  /// [afterModelCallbacks] (Output)
  /// [beforeAgentCallbacks] (Output)
  /// [beforeModelCallbacks] (Output)
  AppVersionSnapshotGuardrailCodeCallback({
    this.afterAgentCallbacks,
    this.afterModelCallbacks,
    this.beforeAgentCallbacks,
    this.beforeModelCallbacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterAgentCallbacks': ?afterAgentCallbacks == null ? null : pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback, Map<String, dynamic>>(afterAgentCallbacks!, (value) => value.toMap()),
      'afterModelCallbacks': ?afterModelCallbacks == null ? null : pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback, Map<String, dynamic>>(afterModelCallbacks!, (value) => value.toMap()),
      'beforeAgentCallbacks': ?beforeAgentCallbacks == null ? null : pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback, Map<String, dynamic>>(beforeAgentCallbacks!, (value) => value.toMap()),
      'beforeModelCallbacks': ?beforeModelCallbacks == null ? null : pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback, Map<String, dynamic>>(beforeModelCallbacks!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotGuardrailCodeCallback.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailCodeCallback(
      afterAgentCallbacks: map['afterAgentCallbacks'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>(map['afterAgentCallbacks'], (value) => AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback.fromMap((value as Map).cast<String, dynamic>())),
      afterModelCallbacks: map['afterModelCallbacks'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>(map['afterModelCallbacks'], (value) => AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback.fromMap((value as Map).cast<String, dynamic>())),
      beforeAgentCallbacks: map['beforeAgentCallbacks'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>(map['beforeAgentCallbacks'], (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback.fromMap((value as Map).cast<String, dynamic>())),
      beforeModelCallbacks: map['beforeModelCallbacks'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>(map['beforeModelCallbacks'], (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

