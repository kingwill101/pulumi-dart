// ignore_for_file: unused_element, unnecessary_cast


/// Database specific information
class DistributedAvailabilityGroupDatabase {
  /// The name of the database in link
  final String? databaseName;

  /// Creates a new [DistributedAvailabilityGroupDatabase].
  /// [databaseName] The name of the database in link
  DistributedAvailabilityGroupDatabase({
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
    };
  }

  factory DistributedAvailabilityGroupDatabase.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupDatabase(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
    );
  }
}

