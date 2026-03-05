// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexCapacityUnits {
  /// The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/dg/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  final pulumi.Input<int>? queryCapacityUnits;
  /// The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  final pulumi.Input<int>? storageCapacityUnits;

  /// Creates a new [IndexCapacityUnits].
  /// [queryCapacityUnits] The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to [QueryCapacityUnits](https://docs.aws.amazon.com/kendra/latest/dg/API_CapacityUnitsConfiguration.html#Kendra-Type-CapacityUnitsConfiguration-QueryCapacityUnits).
  /// [storageCapacityUnits] The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.
  IndexCapacityUnits({
    this.queryCapacityUnits,
    this.storageCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryCapacityUnits': ?queryCapacityUnits,
      'storageCapacityUnits': ?storageCapacityUnits,
    };
  }

  factory IndexCapacityUnits.fromMap(Map<String, dynamic> map) {
    return IndexCapacityUnits(
      queryCapacityUnits: (() { final guardedValue = map['queryCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageCapacityUnits: (() { final guardedValue = map['storageCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

