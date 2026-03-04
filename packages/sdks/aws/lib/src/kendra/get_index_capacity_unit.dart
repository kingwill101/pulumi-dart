// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexCapacityUnit {
  /// The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  final pulumi.Input<int> queryCapacityUnits;

  /// The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  final pulumi.Input<int> storageCapacityUnits;

  /// Creates a new [GetIndexCapacityUnit].
  /// [queryCapacityUnits] The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  /// [storageCapacityUnits] The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  GetIndexCapacityUnit({
    required this.queryCapacityUnits,
    required this.storageCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryCapacityUnits': queryCapacityUnits,
      'storageCapacityUnits': storageCapacityUnits,
    };
  }

  factory GetIndexCapacityUnit.fromMap(Map<String, dynamic> map) {
    return GetIndexCapacityUnit(
      queryCapacityUnits: pulumi.Input.fromValue(
        map['queryCapacityUnits'] as int,
      ),
      storageCapacityUnits: pulumi.Input.fromValue(
        map['storageCapacityUnits'] as int,
      ),
    );
  }
}
