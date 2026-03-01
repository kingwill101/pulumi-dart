// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_aws_offering_configuration.dart';

/// The Vulnerability Assessment autoprovisioning configuration
class DefenderForServersAwsOfferingVaAutoProvisioning {
  /// configuration for Vulnerability Assessment autoprovisioning
  final DefenderForServersAwsOfferingConfiguration? configuration;
  /// Is Vulnerability Assessment auto provisioning enabled
  final bool? enabled;

  /// Creates a new [DefenderForServersAwsOfferingVaAutoProvisioning].
  /// [configuration] configuration for Vulnerability Assessment autoprovisioning
  /// [enabled] Is Vulnerability Assessment auto provisioning enabled
  DefenderForServersAwsOfferingVaAutoProvisioning({
    this.configuration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'enabled': ?enabled,
    };
  }

  factory DefenderForServersAwsOfferingVaAutoProvisioning.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVaAutoProvisioning(
      configuration: map['configuration'] == null ? null : DefenderForServersAwsOfferingConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

