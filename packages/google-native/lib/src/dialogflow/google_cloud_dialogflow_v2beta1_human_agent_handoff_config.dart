// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_live_person_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_salesforce_live_agent_config.dart';

/// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation. Currently, this feature is not general available, please contact Google to get access.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig {
  /// Uses LivePerson (https://www.liveperson.com).
  final GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig?
  livePersonConfig;

  /// Uses Salesforce Live Agent.
  final GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig?
  salesforceLiveAgentConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig].
  /// [livePersonConfig] Uses LivePerson (https://www.liveperson.com).
  /// [salesforceLiveAgentConfig] Uses Salesforce Live Agent.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig({
    this.livePersonConfig,
    this.salesforceLiveAgentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': ?livePersonConfig == null
          ? null
          : livePersonConfig!.toMap(),
      'salesforceLiveAgentConfig': ?salesforceLiveAgentConfig == null
          ? null
          : salesforceLiveAgentConfig!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig(
      livePersonConfig: map['livePersonConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigLivePersonConfig.fromMap(
              (map['livePersonConfig'] as Map).cast<String, dynamic>(),
            ),
      salesforceLiveAgentConfig: map['salesforceLiveAgentConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromMap(
              (map['salesforceLiveAgentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
