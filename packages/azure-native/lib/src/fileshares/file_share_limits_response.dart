// ignore_for_file: unused_element, unnecessary_cast


/// File share-related limits in the specified subscription/location.
class FileShareLimitsResponse {
  /// The maximum number of private endpoint connections allowed for a file share.
  final int maxFileSharePrivateEndpointConnections;
  /// The maximum number of snapshots allowed per file share.
  final int maxFileShareSnapshots;
  /// The maximum number of subnets that can be associated with a file share.
  final int maxFileShareSubnets;
  /// The maximum number of file shares that can be created.
  final int maxFileShares;
  /// The maximum provisioned IOPS (Input/Output Operations Per Second) for a file share.
  final int maxProvisionedIOPerSec;
  /// The maximum provisioned storage in GiB for a file share.
  final int maxProvisionedStorageGiB;
  /// The maximum provisioned throughput in MiB/s for a file share.
  final int maxProvisionedThroughputMiBPerSec;
  /// The minimum provisioned IOPS (Input/Output Operations Per Second) for a file share.
  final int minProvisionedIOPerSec;
  /// The minimum provisioned storage in GiB for a file share.
  final int minProvisionedStorageGiB;
  /// The minimum provisioned throughput in MiB/s for a file share.
  final int minProvisionedThroughputMiBPerSec;

  /// Creates a new [FileShareLimitsResponse].
  /// [maxFileSharePrivateEndpointConnections] The maximum number of private endpoint connections allowed for a file share.
  /// [maxFileShareSnapshots] The maximum number of snapshots allowed per file share.
  /// [maxFileShareSubnets] The maximum number of subnets that can be associated with a file share.
  /// [maxFileShares] The maximum number of file shares that can be created.
  /// [maxProvisionedIOPerSec] The maximum provisioned IOPS (Input/Output Operations Per Second) for a file share.
  /// [maxProvisionedStorageGiB] The maximum provisioned storage in GiB for a file share.
  /// [maxProvisionedThroughputMiBPerSec] The maximum provisioned throughput in MiB/s for a file share.
  /// [minProvisionedIOPerSec] The minimum provisioned IOPS (Input/Output Operations Per Second) for a file share.
  /// [minProvisionedStorageGiB] The minimum provisioned storage in GiB for a file share.
  /// [minProvisionedThroughputMiBPerSec] The minimum provisioned throughput in MiB/s for a file share.
  FileShareLimitsResponse({
    required this.maxFileSharePrivateEndpointConnections,
    required this.maxFileShareSnapshots,
    required this.maxFileShareSubnets,
    required this.maxFileShares,
    required this.maxProvisionedIOPerSec,
    required this.maxProvisionedStorageGiB,
    required this.maxProvisionedThroughputMiBPerSec,
    required this.minProvisionedIOPerSec,
    required this.minProvisionedStorageGiB,
    required this.minProvisionedThroughputMiBPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFileSharePrivateEndpointConnections': maxFileSharePrivateEndpointConnections,
      'maxFileShareSnapshots': maxFileShareSnapshots,
      'maxFileShareSubnets': maxFileShareSubnets,
      'maxFileShares': maxFileShares,
      'maxProvisionedIOPerSec': maxProvisionedIOPerSec,
      'maxProvisionedStorageGiB': maxProvisionedStorageGiB,
      'maxProvisionedThroughputMiBPerSec': maxProvisionedThroughputMiBPerSec,
      'minProvisionedIOPerSec': minProvisionedIOPerSec,
      'minProvisionedStorageGiB': minProvisionedStorageGiB,
      'minProvisionedThroughputMiBPerSec': minProvisionedThroughputMiBPerSec,
    };
  }

  factory FileShareLimitsResponse.fromMap(Map<String, dynamic> map) {
    return FileShareLimitsResponse(
      maxFileSharePrivateEndpointConnections: map['maxFileSharePrivateEndpointConnections'] as int,
      maxFileShareSnapshots: map['maxFileShareSnapshots'] as int,
      maxFileShareSubnets: map['maxFileShareSubnets'] as int,
      maxFileShares: map['maxFileShares'] as int,
      maxProvisionedIOPerSec: map['maxProvisionedIOPerSec'] as int,
      maxProvisionedStorageGiB: map['maxProvisionedStorageGiB'] as int,
      maxProvisionedThroughputMiBPerSec: map['maxProvisionedThroughputMiBPerSec'] as int,
      minProvisionedIOPerSec: map['minProvisionedIOPerSec'] as int,
      minProvisionedStorageGiB: map['minProvisionedStorageGiB'] as int,
      minProvisionedThroughputMiBPerSec: map['minProvisionedThroughputMiBPerSec'] as int,
    );
  }
}

