// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2 {
  /// The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  final String clientId;

  /// Creates a new [WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotAuthSettingsV2AzureStaticWebAppV2(
      clientId: map['clientId'] as String,
    );
  }
}

