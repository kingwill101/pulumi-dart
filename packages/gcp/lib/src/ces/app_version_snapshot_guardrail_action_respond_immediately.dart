// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_action_respond_immediately_response.dart';

class AppVersionSnapshotGuardrailActionRespondImmediately {
  /// (Output)
  /// The canned responses for the agent to choose from. The response is chosen
  /// randomly.
  /// Structure is documented below.
  final List<AppVersionSnapshotGuardrailActionRespondImmediatelyResponse>? responses;

  /// Creates a new [AppVersionSnapshotGuardrailActionRespondImmediately].
  /// [responses] (Output)
  AppVersionSnapshotGuardrailActionRespondImmediately({
    this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responses': ?responses == null ? null : pulumi.Input.encodeList<AppVersionSnapshotGuardrailActionRespondImmediatelyResponse, Map<String, dynamic>>(responses!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotGuardrailActionRespondImmediately.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionRespondImmediately(
      responses: map['responses'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotGuardrailActionRespondImmediatelyResponse>(map['responses'], (value) => AppVersionSnapshotGuardrailActionRespondImmediatelyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

