// ignore_for_file: unused_element, unnecessary_cast

/// VmwareSourceDetails message describes a specific source details for the vmware source type.
class VmwareSourceDetails {
  /// Input only. The credentials password. This is write only and can not be read in a GET operation.
  final String? password;

  /// The hostname of the vcenter.
  final String? resolvedVcenterHost;

  /// The thumbprint representing the certificate for the vcenter.
  final String? thumbprint;

  /// The credentials username.
  final String? username;

  /// The ip address of the vcenter this Source represents.
  final String? vcenterIp;

  /// Creates a new [VmwareSourceDetails].
  /// [password] Input only. The credentials password. This is write only and can not be read in a GET operation.
  /// [resolvedVcenterHost] The hostname of the vcenter.
  /// [thumbprint] The thumbprint representing the certificate for the vcenter.
  /// [username] The credentials username.
  /// [vcenterIp] The ip address of the vcenter this Source represents.
  VmwareSourceDetails({
    this.password,
    this.resolvedVcenterHost,
    this.thumbprint,
    this.username,
    this.vcenterIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final resolvedVcenterHostValue = resolvedVcenterHost;
    if (resolvedVcenterHostValue != null) {
      map['resolvedVcenterHost'] = resolvedVcenterHostValue;
    }
    final thumbprintValue = thumbprint;
    if (thumbprintValue != null) {
      map['thumbprint'] = thumbprintValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    final vcenterIpValue = vcenterIp;
    if (vcenterIpValue != null) {
      map['vcenterIp'] = vcenterIpValue;
    }
    return map;
  }

  factory VmwareSourceDetails.fromMap(Map<String, dynamic> map) {
    return VmwareSourceDetails(
      password: map['password'] == null ? null : map['password'] as String,
      resolvedVcenterHost: map['resolvedVcenterHost'] == null
          ? null
          : map['resolvedVcenterHost'] as String,
      thumbprint:
          map['thumbprint'] == null ? null : map['thumbprint'] as String,
      username: map['username'] == null ? null : map['username'] as String,
      vcenterIp: map['vcenterIp'] == null ? null : map['vcenterIp'] as String,
    );
  }
}
