// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constants used for calculating recommended values of file share provisioning properties.
class FileShareProvisioningConstantsResponse {
  /// Base IO per second.
  final pulumi.Input<int> baseIOPerSec;
  /// Base throughput in MiB per second.
  final pulumi.Input<int> baseThroughputMiBPerSec;
  /// Scalar IO per second.
  final pulumi.Input<double> scalarIOPerSec;
  /// Scalar throughput in MiB per second.
  final pulumi.Input<double> scalarThroughputMiBPerSec;

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
      baseIOPerSec: (map['baseIOPerSec'] as int).input(),
      baseThroughputMiBPerSec: (map['baseThroughputMiBPerSec'] as int).input(),
      scalarIOPerSec: (map['scalarIOPerSec'] as double).input(),
      scalarThroughputMiBPerSec: (map['scalarThroughputMiBPerSec'] as double).input(),
    );
  }
}

