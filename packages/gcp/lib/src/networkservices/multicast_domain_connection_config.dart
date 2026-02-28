// ignore_for_file: unused_element, unnecessary_cast

class MulticastDomainConnectionConfig {
  /// The VPC connection type.
  /// Possible values:
  /// NCC
  /// SAME_VPC
  final String connectionType;

  /// The resource name of the
  /// [NCC](https://cloud.google.com/network-connectivity-center) hub.
  /// Use the following format:
  /// `projects/{project}/locations/global/hubs/{hub}`.
  final String? nccHub;

  /// Creates a new [MulticastDomainConnectionConfig].
  /// [connectionType] The VPC connection type.
  /// [nccHub] The resource name of the
  MulticastDomainConnectionConfig({
    required this.connectionType,
    this.nccHub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionType'] = connectionType;
    final nccHubValue = nccHub;
    if (nccHubValue != null) {
      map['nccHub'] = nccHubValue;
    }
    return map;
  }

  factory MulticastDomainConnectionConfig.fromMap(Map<String, dynamic> map) {
    return MulticastDomainConnectionConfig(
      connectionType: map['connectionType'] as String,
      nccHub: map['nccHub'] == null ? null : map['nccHub'] as String,
    );
  }
}
