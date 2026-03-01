// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineWinrmListener {
  /// The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https`. Changing this forces a new resource to be created.
  final String? certificateUrl;
  /// Specifies the protocol of listener. Possible values are `Http` or `Https`. Changing this forces a new resource to be created.
  final String protocol;

  /// Creates a new [WindowsVirtualMachineWinrmListener].
  /// [certificateUrl] The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https`. Changing this forces a new resource to be created.
  /// [protocol] Specifies the protocol of listener. Possible values are `Http` or `Https`. Changing this forces a new resource to be created.
  WindowsVirtualMachineWinrmListener({
    this.certificateUrl,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': protocol,
    };
  }

  factory WindowsVirtualMachineWinrmListener.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineWinrmListener(
      certificateUrl: map['certificateUrl'] == null ? null : map['certificateUrl'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

