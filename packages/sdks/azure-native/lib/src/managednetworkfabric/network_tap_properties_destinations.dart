// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'isolation_domain_properties.dart';

/// Destination.
class NetworkTapPropertiesDestinations {
  /// The destination Id. ARM Resource ID of either NNI or Internal Networks.
  final pulumi.Input<String> destinationId;
  /// ARM Resource ID of destination Tap Rule that contains match configurations.
  final pulumi.Input<String>? destinationTapRuleId;
  /// Type of destination. Input can be IsolationDomain or Direct.
  final pulumi.Input<String> destinationType;
  /// Isolation Domain Properties.
  final pulumi.Input<IsolationDomainProperties>? isolationDomainProperties;
  /// Destination name.
  final pulumi.Input<String> name;

  /// Creates a new [NetworkTapPropertiesDestinations].
  /// [destinationId] The destination Id. ARM Resource ID of either NNI or Internal Networks.
  /// [destinationTapRuleId] ARM Resource ID of destination Tap Rule that contains match configurations.
  /// [destinationType] Type of destination. Input can be IsolationDomain or Direct.
  /// [isolationDomainProperties] Isolation Domain Properties.
  /// [name] Destination name.
  NetworkTapPropertiesDestinations({
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
      'isolationDomainProperties': ?pulumi.Input.mapOptionalInputValue<IsolationDomainProperties, Map<String, dynamic>>(isolationDomainProperties, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NetworkTapPropertiesDestinations.fromMap(Map<String, dynamic> map) {
    return NetworkTapPropertiesDestinations(
      destinationId: (map['destinationId'] as String).input(),
      destinationTapRuleId: map['destinationTapRuleId'] == null ? null : (map['destinationTapRuleId']! as String).input(),
      destinationType: (map['destinationType'] as String).input(),
      isolationDomainProperties: map['isolationDomainProperties'] == null ? null : (IsolationDomainProperties.fromMap((map['isolationDomainProperties']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

