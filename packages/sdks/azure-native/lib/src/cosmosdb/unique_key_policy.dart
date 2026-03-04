// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unique_key.dart';

/// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
class UniqueKeyPolicy {
  /// List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<List<UniqueKey>>? uniqueKeys;

  /// Creates a new [UniqueKeyPolicy].
  /// [uniqueKeys] List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  UniqueKeyPolicy({this.uniqueKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<UniqueKey>,
            List<Map<String, dynamic>>
          >(
            uniqueKeys,
            (value) => pulumi.Input.encodeList<UniqueKey, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory UniqueKeyPolicy.fromMap(Map<String, dynamic> map) {
    return UniqueKeyPolicy(
      uniqueKeys: (() {
        final guardedValue = map['uniqueKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UniqueKey>(
            guardedValue,
            (value) =>
                UniqueKey.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
