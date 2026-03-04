// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Database Resource
class DatabaseProfileResponse {
  /// Resource Id of Cosmos Resource
  final pulumi.Input<String> cosmosId;

  /// Creates a new [DatabaseProfileResponse].
  /// [cosmosId] Resource Id of Cosmos Resource
  DatabaseProfileResponse({required this.cosmosId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cosmosId': cosmosId};
  }

  factory DatabaseProfileResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseProfileResponse(
      cosmosId: pulumi.Input.fromValue(map['cosmosId'] as String),
    );
  }
}
