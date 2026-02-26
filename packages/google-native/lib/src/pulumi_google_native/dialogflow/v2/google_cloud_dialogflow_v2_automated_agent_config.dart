// ignore_for_file: unused_element, unnecessary_cast

/// Defines the Automated Agent to connect to a conversation.
class GoogleCloudDialogflowV2AutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use. This project needs to either be the same project as the conversation or you need to grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow API Service Agent` role in this project. - For ES agents, use format: `projects//locations//agent/environments/`. If environment is not specified, the default `draft` environment is used. Refer to [DetectIntentRequest](/dialogflow/docs/reference/rpc/google.cloud.dialogflow.v2#google.cloud.dialogflow.v2.DetectIntentRequest) for more details. - For CX agents, use format `projects//locations//agents//environments/`. If environment is not specified, the default `draft` environment is used.
  final String agent;

  /// Optional. Sets Dialogflow CX session life time. By default, a Dialogflow CX session remains active and its data is stored for 30 minutes after the last request is sent for the session. This value should be no longer than 1 day.
  final String? sessionTtl;

  GoogleCloudDialogflowV2AutomatedAgentConfig({
    required this.agent,
    this.sessionTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    final sessionTtlValue = sessionTtl;
    if (sessionTtlValue != null) {
      map['sessionTtl'] = sessionTtlValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2AutomatedAgentConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2AutomatedAgentConfig(
      agent: map['agent'] as String,
      sessionTtl:
          map['sessionTtl'] == null ? null : map['sessionTtl'] as String,
    );
  }
}
