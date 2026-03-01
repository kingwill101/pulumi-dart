// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_aws_offering_response_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersAwsOfferingResponseVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final DefenderForServersAwsOfferingResponseConfiguration? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersAwsOfferingResponseVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  DefenderForServersAwsOfferingResponseVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingResponseVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponseVaAutoProvisioning(
      configuration: map['configuration'] == null ? null : DefenderForServersAwsOfferingResponseConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

