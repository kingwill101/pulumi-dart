// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to Database Resource
class DatabaseProfileResponse {
  /// Resource Id of Cosmos Resource
  final String cosmosId;

  /// Creates a new [DatabaseProfileResponse].
  /// [cosmosId] Resource Id of Cosmos Resource
  DatabaseProfileResponse({
    required this.cosmosId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosId': cosmosId,
    };
  }

  factory DatabaseProfileResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseProfileResponse(
      cosmosId: map['cosmosId'] as String,
    );
  }
}

