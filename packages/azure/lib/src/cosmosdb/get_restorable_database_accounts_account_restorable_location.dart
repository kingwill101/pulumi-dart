// ignore_for_file: unused_element, unnecessary_cast


class GetRestorableDatabaseAccountsAccountRestorableLocation {
  /// The creation time of the regional Cosmos DB Restorable Database Account.
  final String creationTime;
  /// The deletion time of the regional Cosmos DB Restorable Database Account.
  final String deletionTime;
  /// The location where the Cosmos DB Database Account.
  final String location;
  /// The instance ID of the regional Cosmos DB Restorable Database Account.
  final String regionalDatabaseAccountInstanceId;

  /// Creates a new [GetRestorableDatabaseAccountsAccountRestorableLocation].
  /// [creationTime] The creation time of the regional Cosmos DB Restorable Database Account.
  /// [deletionTime] The deletion time of the regional Cosmos DB Restorable Database Account.
  /// [location] The location where the Cosmos DB Database Account.
  /// [regionalDatabaseAccountInstanceId] The instance ID of the regional Cosmos DB Restorable Database Account.
  GetRestorableDatabaseAccountsAccountRestorableLocation({
    required this.creationTime,
    required this.deletionTime,
    required this.location,
    required this.regionalDatabaseAccountInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'deletionTime': deletionTime,
      'location': location,
      'regionalDatabaseAccountInstanceId': regionalDatabaseAccountInstanceId,
    };
  }

  factory GetRestorableDatabaseAccountsAccountRestorableLocation.fromMap(Map<String, dynamic> map) {
    return GetRestorableDatabaseAccountsAccountRestorableLocation(
      creationTime: map['creationTime'] as String,
      deletionTime: map['deletionTime'] as String,
      location: map['location'] as String,
      regionalDatabaseAccountInstanceId: map['regionalDatabaseAccountInstanceId'] as String,
    );
  }
}

