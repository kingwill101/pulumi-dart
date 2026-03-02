// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_network_access.dart';

/// Details of the HealthDataAIServices DeidService.
class DeidServiceProperties {
  /// Gets or sets allow or disallow public network access to resource
  final pulumi.Input<PublicNetworkAccess>? publicNetworkAccess;

  /// Creates a new [DeidServiceProperties].
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to resource
  DeidServiceProperties({
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': ?pulumi.Input.mapOptionalInputValue<PublicNetworkAccess, String>(publicNetworkAccess, (value) => value.value),
    };
  }

  factory DeidServiceProperties.fromMap(Map<String, dynamic> map) {
    return DeidServiceProperties(
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (PublicNetworkAccess.fromValue(map['publicNetworkAccess'] as String)).input(),
    );
  }
}

