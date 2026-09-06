// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protocol_types.dart';

/// Describes Protocol and thumbprint of Windows Remote Management listener
class WinRMListener {
  /// This is the URL of a certificate that has been uploaded to Key Vault as a secret. For adding a secret to the Key Vault, see [Add a key or secret to the key vault](https://docs.microsoft.com/azure/key-vault/key-vault-get-started/#add). In this case, your certificate needs to be the Base64 encoding of the following JSON Object which is encoded in UTF-8: &lt;br&gt;&lt;br&gt; {&lt;br&gt;  "data":"&lt;Base64-encoded-certificate&gt;",&lt;br&gt;  "dataType":"pfx",&lt;br&gt;  "password":"&lt;pfx-file-password&gt;"&lt;br&gt;} &lt;br&gt; To install certificates on a virtual machine it is recommended to use the [Azure Key Vault virtual machine extension for Linux](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-linux) or the [Azure Key Vault virtual machine extension for Windows](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final pulumi.Input<String?>? certificateUrl;
  /// Specifies the protocol of WinRM listener. Possible values are: **http,** **https.**
  final pulumi.Input<ProtocolTypes?>? protocol;

  /// Creates a new [WinRMListener].
  /// [certificateUrl] This is the URL of a certificate that has been uploaded to Key Vault as a secret. For adding a secret to the Key Vault, see [Add a key or secret to the key vault](https://docs.microsoft.com/azure/key-vault/key-vault-get-started/#add). In this case, your certificate needs to be the Base64 encoding of the following JSON Object which is encoded in UTF-8: &lt;br&gt;&lt;br&gt; {&lt;br&gt;  "data":"&lt;Base64-encoded-certificate&gt;",&lt;br&gt;  "dataType":"pfx",&lt;br&gt;  "password":"&lt;pfx-file-password&gt;"&lt;br&gt;} &lt;br&gt; To install certificates on a virtual machine it is recommended to use the [Azure Key Vault virtual machine extension for Linux](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-linux) or the [Azure Key Vault virtual machine extension for Windows](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  /// [protocol] Specifies the protocol of WinRM listener. Possible values are: **http,** **https.**
  const WinRMListener({
    this.certificateUrl,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': ?pulumi.Input.mapOptionalInputValue<ProtocolTypes, String>(protocol, (value) => value.wireValue),
    };
  }

  factory WinRMListener.fromMap(Map<String, dynamic> map) {
    return WinRMListener(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtocolTypes.fromValue(guardedValue as String)); })(),
    );
  }
}
