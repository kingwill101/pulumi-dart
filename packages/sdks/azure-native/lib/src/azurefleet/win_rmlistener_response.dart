// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes Protocol and thumbprint of Windows Remote Management listener
class WinRMListenerResponse {
  /// This is the URL of a certificate that has been uploaded to Key Vault as a
  /// secret. For adding a secret to the Key Vault, see [Add a key or secret to the
  /// key
  /// vault](https://learn.microsoft.com/azure/key-vault/key-vault-get-started/#add).
  /// In this case, your certificate needs to be the Base64 encoding of the following
  /// JSON Object which is encoded in UTF-8: <br><br> {<br>
  /// "data":"<Base64-encoded-certificate>",<br>  "dataType":"pfx",<br>
  /// "password":"<pfx-file-password>"<br>} <br> To install certificates on a virtual
  /// machine it is recommended to use the [Azure Key Vault virtual machine extension
  /// for
  /// Linux](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-linux)
  /// or the [Azure Key Vault virtual machine extension for
  /// Windows](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final pulumi.Input<String>? certificateUrl;
  /// Specifies the protocol of WinRM listener. Possible values are: **http,**
  /// **https.**
  final pulumi.Input<String>? protocol;

  /// Creates a new [WinRMListenerResponse].
  /// [certificateUrl] This is the URL of a certificate that has been uploaded to Key Vault as a
  /// [protocol] Specifies the protocol of WinRM listener. Possible values are: **http,**
  WinRMListenerResponse({
    this.certificateUrl,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': ?protocol,
    };
  }

  factory WinRMListenerResponse.fromMap(Map<String, dynamic> map) {
    return WinRMListenerResponse(
      certificateUrl: map['certificateUrl'] == null ? null : (map['certificateUrl']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

