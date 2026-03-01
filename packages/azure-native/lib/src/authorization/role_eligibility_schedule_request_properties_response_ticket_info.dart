// ignore_for_file: unused_element, unnecessary_cast


/// Ticket Info of the role eligibility
class RoleEligibilityScheduleRequestPropertiesResponseTicketInfo {
  /// Ticket number for the role eligibility
  final String? ticketNumber;
  /// Ticket system name for the role eligibility
  final String? ticketSystem;

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

  factory RoleEligibilityScheduleRequestPropertiesResponseTicketInfo.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesResponseTicketInfo(
      ticketNumber: map['ticketNumber'] == null ? null : map['ticketNumber'] as String,
      ticketSystem: map['ticketSystem'] == null ? null : map['ticketSystem'] as String,
    );
  }
}

