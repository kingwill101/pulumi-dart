// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasePostgresqlV2PendingUpdate {
  /// The time when a mandatory update needs to be applied.
  final String deadline;
  /// A description of the update.
  final String description;
  /// The date and time a maintenance update will be applied.
  final String plannedFor;

  /// Creates a new [GetDatabasePostgresqlV2PendingUpdate].
  /// [deadline] The time when a mandatory update needs to be applied.
  /// [description] A description of the update.
  /// [plannedFor] The date and time a maintenance update will be applied.
  GetDatabasePostgresqlV2PendingUpdate({
    required this.deadline,
    required this.description,
    required this.plannedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadline': deadline,
      'description': description,
      'plannedFor': plannedFor,
    };
  }

  factory GetDatabasePostgresqlV2PendingUpdate.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlV2PendingUpdate(
      deadline: map['deadline'] as String,
      description: map['description'] as String,
      plannedFor: map['plannedFor'] as String,
    );
  }
}

