// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ticket Info of the role eligibility
class RoleEligibilityScheduleRequestPropertiesResponseTicketInfo {
  /// Ticket number for the role eligibility
  final pulumi.Input<String>? ticketNumber;

  /// Ticket system name for the role eligibility
  final pulumi.Input<String>? ticketSystem;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesResponseTicketInfo].
  /// [ticketNumber] Ticket number for the role eligibility
  /// [ticketSystem] Ticket system name for the role eligibility
  RoleEligibilityScheduleRequestPropertiesResponseTicketInfo({
    this.ticketNumber,
    this.ticketSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticketNumber': ?ticketNumber,
      'ticketSystem': ?ticketSystem,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return RoleEligibilityScheduleRequestPropertiesResponseTicketInfo(
      ticketNumber: (() {
        final guardedValue = map['ticketNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ticketSystem: (() {
        final guardedValue = map['ticketSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
