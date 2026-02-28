// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_include_objects_database.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase>?
      databases;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjects].
  /// [databases] MongoDB databases in the cluster.
  StreamSourceConfigMongodbSourceConfigIncludeObjects({
    this.databases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databasesValue = databases;
    if (databasesValue != null) {
      map['databases'] = pulumi.Input.encodeList<
          StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase,
          Map<String, dynamic>>(databasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjects(
      databases: map['databases'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase>(
              map['databases'],
              (value) =>
                  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
