// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_mongodb_source_config_exclude_objects_database/stream_source_config_mongodb_source_config_exclude_objects_database.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase>?
      databases;

  StreamSourceConfigMongodbSourceConfigExcludeObjects({
    this.databases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databasesValue = databases;
    if (databasesValue != null) {
      map['databases'] = pulumi.Input.encodeList<
          StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase,
          Map<String, dynamic>>(databasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjects(
      databases: map['databases'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase>(
              map['databases'],
              (value) =>
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
