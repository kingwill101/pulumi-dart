// ignore_for_file: unused_element, unnecessary_cast


/// Describe the additional data of governance assignment - optional
class GovernanceAssignmentAdditionalDataResponse {
  /// Ticket link associated with this governance assignment - for example: https://snow.com
  final String? ticketLink;
  /// Ticket number associated with this governance assignment
  final int? ticketNumber;
  /// The ticket status associated with this governance assignment - for example: Active
  final String? ticketStatus;

  /// Creates a new [GovernanceAssignmentAdditionalDataResponse].
  /// [ticketLink] Ticket link associated with this governance assignment - for example: https://snow.com
  /// [ticketNumber] Ticket number associated with this governance assignment
  /// [ticketStatus] The ticket status associated with this governance assignment - for example: Active
  GovernanceAssignmentAdditionalDataResponse({
    this.ticketLink,
    this.ticketNumber,
    this.ticketStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticketLink': ?ticketLink,
      'ticketNumber': ?ticketNumber,
      'ticketStatus': ?ticketStatus,
    };
  }

  factory GovernanceAssignmentAdditionalDataResponse.fromMap(Map<String, dynamic> map) {
    return GovernanceAssignmentAdditionalDataResponse(
      ticketLink: map['ticketLink'] == null ? null : map['ticketLink'] as String,
      ticketNumber: map['ticketNumber'] == null ? null : map['ticketNumber'] as int,
      ticketStatus: map['ticketStatus'] == null ? null : map['ticketStatus'] as String,
    );
  }
}

