// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchIndexSchemaIndexSetting {
  /// Specifies custom routing fields. You can specify some primary key columns as routing fields. Tablestore distributes data that is written to a search index across different partitions based on the specified routing fields. The data whose routing field values are the same is distributed to the same partition.
  final pulumi.Input<List<String>>? routingFields;

  /// Creates a new [SearchIndexSchemaIndexSetting].
  /// [routingFields] Specifies custom routing fields. You can specify some primary key columns as routing fields. Tablestore distributes data that is written to a search index across different partitions based on the specified routing fields. The data whose routing field values are the same is distributed to the same partition.
  const SearchIndexSchemaIndexSetting({
    this.routingFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingFields': ?routingFields,
    };
  }

  factory SearchIndexSchemaIndexSetting.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchemaIndexSetting(
      routingFields: (() { final guardedValue = map['routingFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

