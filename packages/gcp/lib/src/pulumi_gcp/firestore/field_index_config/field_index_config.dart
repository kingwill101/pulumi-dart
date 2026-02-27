// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../field_index_config_index/field_index_config_index.dart';

class FieldIndexConfig {
  /// The indexes to configure on the field. Order or array contains must be specified.
  /// Structure is documented below.
  final List<FieldIndexConfigIndex>? indexes;

  FieldIndexConfig({
    this.indexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final indexesValue = indexes;
    if (indexesValue != null) {
      map['indexes'] =
          pulumi.Input.encodeList<FieldIndexConfigIndex, Map<String, dynamic>>(
              indexesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FieldIndexConfig.fromMap(Map<String, dynamic> map) {
    return FieldIndexConfig(
      indexes: map['indexes'] == null
          ? null
          : pulumi.Input.decodeList<FieldIndexConfigIndex>(
              map['indexes'],
              (value) => FieldIndexConfigIndex.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
