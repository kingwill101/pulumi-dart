// ignore_for_file: unused_element, unnecessary_cast


/// WorkerProfile represents a worker profile.
class WorkerProfileResponse {
  /// The number of worker VMs.
  final int? count;
  /// The resource ID of an associated DiskEncryptionSet, if applicable.
  final String? diskEncryptionSetId;
  /// The disk size of the worker VMs.
  final int? diskSizeGB;
  /// Whether master virtual machines are encrypted at host.
  final String? encryptionAtHost;
  /// The worker profile name.
  final String? name;
  /// The Azure resource ID of the worker subnet.
  final String? subnetId;
  /// The size of the worker VMs.
  final String? vmSize;

  /// Creates a new [WorkerProfileResponse].
  /// [count] The number of worker VMs.
  /// [diskEncryptionSetId] The resource ID of an associated DiskEncryptionSet, if applicable.
  /// [diskSizeGB] The disk size of the worker VMs.
  /// [encryptionAtHost] Whether master virtual machines are encrypted at host.
  /// [name] The worker profile name.
  /// [subnetId] The Azure resource ID of the worker subnet.
  /// [vmSize] The size of the worker VMs.
  WorkerProfileResponse({
    this.count,
    this.diskEncryptionSetId,
    this.diskSizeGB,
    this.encryptionAtHost,
    this.name,
    this.subnetId,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGB': ?diskSizeGB,
      'encryptionAtHost': ?encryptionAtHost,
      'name': ?name,
      'subnetId': ?subnetId,
      'vmSize': ?vmSize,
    };
  }

  factory WorkerProfileResponse.fromMap(Map<String, dynamic> map) {
    return WorkerProfileResponse(
      count: map['count'] == null ? null : map['count'] as int,
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      encryptionAtHost: map['encryptionAtHost'] == null ? null : map['encryptionAtHost'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

