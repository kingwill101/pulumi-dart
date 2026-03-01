// ignore_for_file: unused_element, unnecessary_cast


/// The resource properties when type is Azure Key Vault
class AzureKeyVaultPropertiesResponse {
  /// True if connect via Kubernetes CSI Driver.
  final bool? connectAsKubernetesCsiDriver;
  /// The azure resource type.
  /// Expected value is 'KeyVault'.
  final String type;

  /// Creates a new [AzureKeyVaultPropertiesResponse].
  /// [connectAsKubernetesCsiDriver] True if connect via Kubernetes CSI Driver.
  /// [type] The azure resource type.
  AzureKeyVaultPropertiesResponse({
    this.connectAsKubernetesCsiDriver,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectAsKubernetesCsiDriver': ?connectAsKubernetesCsiDriver,
      'type': type,
    };
  }

  factory AzureKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultPropertiesResponse(
      connectAsKubernetesCsiDriver: map['connectAsKubernetesCsiDriver'] == null ? null : map['connectAsKubernetesCsiDriver'] as bool,
      type: map['type'] as String,
    );
  }
}

