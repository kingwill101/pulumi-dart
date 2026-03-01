// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an add vCenter request.
class AddVCenterRequestProperties {
  /// The friendly name of the vCenter.
  final String? friendlyName;
  /// The IP address of the vCenter to be discovered.
  final String? ipAddress;
  /// The port number for discovery.
  final String? port;
  /// The process server Id from where the discovery is orchestrated.
  final String? processServerId;
  /// The account Id which has privileges to discover the vCenter.
  final String? runAsAccountId;

  /// Creates a new [AddVCenterRequestProperties].
  /// [friendlyName] The friendly name of the vCenter.
  /// [ipAddress] The IP address of the vCenter to be discovered.
  /// [port] The port number for discovery.
  /// [processServerId] The process server Id from where the discovery is orchestrated.
  /// [runAsAccountId] The account Id which has privileges to discover the vCenter.
  AddVCenterRequestProperties({
    this.friendlyName,
    this.ipAddress,
    this.port,
    this.processServerId,
    this.runAsAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'processServerId': ?processServerId,
      'runAsAccountId': ?runAsAccountId,
    };
  }

  factory AddVCenterRequestProperties.fromMap(Map<String, dynamic> map) {
    return AddVCenterRequestProperties(
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      processServerId: map['processServerId'] == null ? null : map['processServerId'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
    );
  }
}

