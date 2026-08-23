// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_configuration_navigation.dart';

/// Guest configuration assignment properties.
class GuestConfigurationAssignmentProperties {
  /// The source which initiated the guest configuration assignment. Ex: Azure Policy
  final pulumi.Input<String>? context;
  /// The guest configuration to assign.
  final pulumi.Input<GuestConfigurationNavigation>? guestConfiguration;

  /// Creates a new [GuestConfigurationAssignmentProperties].
  /// [context] The source which initiated the guest configuration assignment. Ex: Azure Policy
  /// [guestConfiguration] The guest configuration to assign.
  const GuestConfigurationAssignmentProperties({
    this.context,
    this.guestConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'guestConfiguration': ?pulumi.Input.mapOptionalInputValue<GuestConfigurationNavigation, Map<String, dynamic>>(guestConfiguration, (value) => value.toMap()),
    };
  }

  factory GuestConfigurationAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentProperties(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestConfiguration: (() { final guardedValue = map['guestConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestConfigurationNavigation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
