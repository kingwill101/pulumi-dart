// ignore_for_file: unused_element, unnecessary_cast

import 'isolation_domain_properties_response.dart';

/// Destination.
class NetworkTapPropertiesResponseDestinations {
  /// The destination Id. ARM Resource ID of either NNI or Internal Networks.
  final String destinationId;
  /// ARM Resource ID of destination Tap Rule that contains match configurations.
  final String? destinationTapRuleId;
  /// Type of destination. Input can be IsolationDomain or Direct.
  final String destinationType;
  /// Isolation Domain Properties.
  final IsolationDomainPropertiesResponse? isolationDomainProperties;
  /// Destination name.
  final String name;

  /// Creates a new [NetworkTapPropertiesResponseDestinations].
  /// [destinationId] The destination Id. ARM Resource ID of either NNI or Internal Networks.
  /// [destinationTapRuleId] ARM Resource ID of destination Tap Rule that contains match configurations.
  /// [destinationType] Type of destination. Input can be IsolationDomain or Direct.
  /// [isolationDomainProperties] Isolation Domain Properties.
  /// [name] Destination name.
  NetworkTapPropertiesResponseDestinations({
    required this.destinationId,
    this.destinationTapRuleId,
    required this.destinationType,
    this.isolationDomainProperties,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationId': destinationId,
      'destinationTapRuleId': ?destinationTapRuleId,
      'destinationType': destinationType,
      'isolationDomainProperties': ?isolationDomainProperties == null ? null : isolationDomainProperties!.toMap(),
      'name': name,
    };
  }

  factory NetworkTapPropertiesResponseDestinations.fromMap(Map<String, dynamic> map) {
    return NetworkTapPropertiesResponseDestinations(
      destinationId: map['destinationId'] as String,
      destinationTapRuleId: map['destinationTapRuleId'] == null ? null : map['destinationTapRuleId'] as String,
      destinationType: map['destinationType'] as String,
      isolationDomainProperties: map['isolationDomainProperties'] == null ? null : IsolationDomainPropertiesResponse.fromMap((map['isolationDomainProperties'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

