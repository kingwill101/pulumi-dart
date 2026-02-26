// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_handoff_config_live_person_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_handoff_config_salesforce_live_agent_config_response.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse {
  /// Uses LivePerson (https://www.liveperson.com).
  final GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse
      livePersonConfig;

  /// Uses Salesforce Live Agent.
  final GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse
      salesforceLiveAgentConfig;

  GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse({
    required this.livePersonConfig,
    required this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['livePersonConfig'] = livePersonConfig.toMap();
    map['salesforceLiveAgentConfig'] = salesforceLiveAgentConfig.toMap();
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentHandoffConfigResponse(
      livePersonConfig:
          GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfigResponse
              .fromMap(
                  (map['livePersonConfig'] as Map).cast<String, dynamic>()),
      salesforceLiveAgentConfig:
          GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse
              .fromMap((map['salesforceLiveAgentConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
