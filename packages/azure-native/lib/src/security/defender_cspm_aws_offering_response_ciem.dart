// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_aws_offering_response_ciem_discovery.dart';
import 'defender_cspm_aws_offering_response_ciem_oidc.dart';

/// Defenders CSPM Permissions Management offering configurations
class DefenderCspmAwsOfferingResponseCiem {
  /// Defender CSPM Permissions Management discovery configuration
  final DefenderCspmAwsOfferingResponseCiemDiscovery? ciemDiscovery;
  /// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  final DefenderCspmAwsOfferingResponseCiemOidc? ciemOidc;

  /// Creates a new [DefenderCspmAwsOfferingResponseCiem].
  /// [ciemDiscovery] Defender CSPM Permissions Management discovery configuration
  /// [ciemOidc] AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  DefenderCspmAwsOfferingResponseCiem({
    this.ciemDiscovery,
    this.ciemOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?ciemDiscovery == null ? null : ciemDiscovery!.toMap(),
      'ciemOidc': ?ciemOidc == null ? null : ciemOidc!.toMap(),
    };
  }

  factory DefenderCspmAwsOfferingResponseCiem.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseCiem(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : DefenderCspmAwsOfferingResponseCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>()),
      ciemOidc: map['ciemOidc'] == null ? null : DefenderCspmAwsOfferingResponseCiemOidc.fromMap((map['ciemOidc'] as Map).cast<String, dynamic>()),
    );
  }
}

