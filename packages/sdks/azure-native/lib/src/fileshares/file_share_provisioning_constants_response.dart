// ignore_for_file: unused_element, unnecessary_cast


/// Constants used for calculating recommended values of file share provisioning properties.
class FileShareProvisioningConstantsResponse {
  /// Base IO per second.
  final int baseIOPerSec;
  /// Base throughput in MiB per second.
  final int baseThroughputMiBPerSec;
  /// Scalar IO per second.
  final double scalarIOPerSec;
  /// Scalar throughput in MiB per second.
  final double scalarThroughputMiBPerSec;

  /// Creates a new [FileShareProvisioningConstantsResponse].
  /// [baseIOPerSec] Base IO per second.
  /// [baseThroughputMiBPerSec] Base throughput in MiB per second.
  /// [scalarIOPerSec] Scalar IO per second.
  /// [scalarThroughputMiBPerSec] Scalar throughput in MiB per second.
  FileShareProvisioningConstantsResponse({
    required this.baseIOPerSec,
    required this.baseThroughputMiBPerSec,
    required this.scalarIOPerSec,
    required this.scalarThroughputMiBPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseIOPerSec': baseIOPerSec,
      'baseThroughputMiBPerSec': baseThroughputMiBPerSec,
      'scalarIOPerSec': scalarIOPerSec,
      'scalarThroughputMiBPerSec': scalarThroughputMiBPerSec,
    };
  }

  factory FileShareProvisioningConstantsResponse.fromMap(Map<String, dynamic> map) {
    return FileShareProvisioningConstantsResponse(
      baseIOPerSec: map['baseIOPerSec'] as int,
      baseThroughputMiBPerSec: map['baseThroughputMiBPerSec'] as int,
      scalarIOPerSec: map['scalarIOPerSec'] as double,
      scalarThroughputMiBPerSec: map['scalarThroughputMiBPerSec'] as double,
    );
  }
}

