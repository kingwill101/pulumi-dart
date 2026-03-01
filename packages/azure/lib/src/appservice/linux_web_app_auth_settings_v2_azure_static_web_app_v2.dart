// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppAuthSettingsV2AzureStaticWebAppV2 {
  /// The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  final String clientId;

  /// Creates a new [LinuxWebAppAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The ID of the Client to use to authenticate with Azure Static Web App Authentication.
  LinuxWebAppAuthSettingsV2AzureStaticWebAppV2({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory LinuxWebAppAuthSettingsV2AzureStaticWebAppV2.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppAuthSettingsV2AzureStaticWebAppV2(
      clientId: map['clientId'] as String,
    );
  }
}

