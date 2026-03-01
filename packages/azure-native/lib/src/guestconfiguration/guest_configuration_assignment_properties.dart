// ignore_for_file: unused_element, unnecessary_cast

import 'guest_configuration_navigation.dart';

/// Guest configuration assignment properties.
class GuestConfigurationAssignmentProperties {
  /// The source which initiated the guest configuration assignment. Ex: Azure Policy
  final String? context;
  /// The guest configuration to assign.
  final GuestConfigurationNavigation? guestConfiguration;

  /// Creates a new [GuestConfigurationAssignmentProperties].
  /// [context] The source which initiated the guest configuration assignment. Ex: Azure Policy
  /// [guestConfiguration] The guest configuration to assign.
  GuestConfigurationAssignmentProperties({
    this.context,
    this.guestConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'guestConfiguration': ?guestConfiguration == null ? null : guestConfiguration!.toMap(),
    };
  }

  factory GuestConfigurationAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return GuestConfigurationAssignmentProperties(
      context: map['context'] == null ? null : map['context'] as String,
      guestConfiguration: map['guestConfiguration'] == null ? null : GuestConfigurationNavigation.fromMap((map['guestConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

