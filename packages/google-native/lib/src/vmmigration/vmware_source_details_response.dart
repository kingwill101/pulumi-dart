// ignore_for_file: unused_element, unnecessary_cast


/// VmwareSourceDetails message describes a specific source details for the vmware source type.
class VmwareSourceDetailsResponse {
  /// Input only. The credentials password. This is write only and can not be read in a GET operation.
  final String password;
  /// The hostname of the vcenter.
  final String resolvedVcenterHost;
  /// The thumbprint representing the certificate for the vcenter.
  final String thumbprint;
  /// The credentials username.
  final String username;
  /// The ip address of the vcenter this Source represents.
  final String vcenterIp;

  /// Creates a new [VmwareSourceDetailsResponse].
  /// [password] Input only. The credentials password. This is write only and can not be read in a GET operation.
  /// [resolvedVcenterHost] The hostname of the vcenter.
  /// [thumbprint] The thumbprint representing the certificate for the vcenter.
  /// [username] The credentials username.
  /// [vcenterIp] The ip address of the vcenter this Source represents.
  VmwareSourceDetailsResponse({
    required this.password,
    required this.resolvedVcenterHost,
    required this.thumbprint,
    required this.username,
    required this.vcenterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'resolvedVcenterHost': resolvedVcenterHost,
      'thumbprint': thumbprint,
      'username': username,
      'vcenterIp': vcenterIp,
    };
  }

  factory VmwareSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmwareSourceDetailsResponse(
      password: map['password'] as String,
      resolvedVcenterHost: map['resolvedVcenterHost'] as String,
      thumbprint: map['thumbprint'] as String,
      username: map['username'] as String,
      vcenterIp: map['vcenterIp'] as String,
    );
  }
}

