// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ticket Info of the role eligibility
class RoleEligibilityScheduleRequestPropertiesTicketInfo {
  /// Ticket number for the role eligibility
  final pulumi.Input<String>? ticketNumber;
  /// Ticket system name for the role eligibility
  final pulumi.Input<String>? ticketSystem;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesTicketInfo].
  /// [ticketNumber] Ticket number for the role eligibility
  /// [ticketSystem] Ticket system name for the role eligibility
  const RoleEligibilityScheduleRequestPropertiesTicketInfo({
    this.ticketNumber,
    this.ticketSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticketNumber': ?ticketNumber,
      'ticketSystem': ?ticketSystem,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesTicketInfo.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesTicketInfo(
      ticketNumber: (() { final guardedValue = map['ticketNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticketSystem: (() { final guardedValue = map['ticketSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

