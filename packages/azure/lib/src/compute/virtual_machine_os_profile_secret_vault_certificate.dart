// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineOsProfileSecretVaultCertificate {
  /// (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to, such as `My`.
  final String? certificateStore;
  /// The ID of the Key Vault Secret. Stored secret is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be:
  ///
  /// ```json
  /// {
  /// "data":"<Base64-encoded-certificate>",
  /// "dataType":"pfx",
  /// "password":"<pfx-file-password>"
  /// }
  /// ```
  ///
  /// > **NOTE:** If your certificate is stored in Azure Key Vault - this can be sourced from the `secret_id` property on the `azure.keyvault.Certificate` resource.
  final String certificateUrl;

  /// Creates a new [VirtualMachineOsProfileSecretVaultCertificate].
  /// [certificateStore] (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to, such as `My`.
  /// [certificateUrl] The ID of the Key Vault Secret. Stored secret is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be:
  VirtualMachineOsProfileSecretVaultCertificate({
    this.certificateStore,
    required this.certificateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStore': ?certificateStore,
      'certificateUrl': certificateUrl,
    };
  }

  factory VirtualMachineOsProfileSecretVaultCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileSecretVaultCertificate(
      certificateStore: map['certificateStore'] == null ? null : map['certificateStore'] as String,
      certificateUrl: map['certificateUrl'] as String,
    );
  }
}

