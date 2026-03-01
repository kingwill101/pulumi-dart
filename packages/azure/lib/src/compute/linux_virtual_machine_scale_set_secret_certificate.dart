// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetSecretCertificate {
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// > **Note:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  ///
  /// > **Note:** The certificate must have been uploaded/created in PFX format, PEM certificates are not currently supported by Azure.
  final String url;

  /// Creates a new [LinuxVirtualMachineScaleSetSecretCertificate].
  /// [url] The Secret URL of a Key Vault Certificate.
  LinuxVirtualMachineScaleSetSecretCertificate({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory LinuxVirtualMachineScaleSetSecretCertificate.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetSecretCertificate(
      url: map['url'] as String,
    );
  }
}

