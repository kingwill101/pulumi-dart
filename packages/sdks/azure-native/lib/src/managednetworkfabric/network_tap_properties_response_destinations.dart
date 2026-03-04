// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'isolation_domain_properties_response.dart';

/// Destination.
class NetworkTapPropertiesResponseDestinations {
  /// The destination Id. ARM Resource ID of either NNI or Internal Networks.
  final pulumi.Input<String> destinationId;

  /// ARM Resource ID of destination Tap Rule that contains match configurations.
  final pulumi.Input<String>? destinationTapRuleId;

  /// Type of destination. Input can be IsolationDomain or Direct.
  final pulumi.Input<String> destinationType;

  /// Isolation Domain Properties.
  final pulumi.Input<IsolationDomainPropertiesResponse>?
  isolationDomainProperties;

  /// Destination name.
  final pulumi.Input<String> name;

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
      'isolationDomainProperties':
          ?pulumi.Input.mapOptionalInputValue<
            IsolationDomainPropertiesResponse,
            Map<String, dynamic>
          >(isolationDomainProperties, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NetworkTapPropertiesResponseDestinations.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkTapPropertiesResponseDestinations(
      destinationId: pulumi.Input.fromValue(map['destinationId'] as String),
      destinationTapRuleId: (() {
        final guardedValue = map['destinationTapRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationType: pulumi.Input.fromValue(map['destinationType'] as String),
      isolationDomainProperties: (() {
        final guardedValue = map['isolationDomainProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IsolationDomainPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
