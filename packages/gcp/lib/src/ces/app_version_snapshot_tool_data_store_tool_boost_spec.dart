// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec_spec.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpec {
  /// (Output)
  /// The Data Store where the boosting configuration is applied. Full resource
  /// name of DataStore, such as
  /// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}.
  final List<String>? dataStores;

  /// (Output)
  /// A list of boosting specifications.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolDataStoreToolBoostSpecSpec>? specs;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpec].
  /// [dataStores] (Output)
  /// [specs] (Output)
  AppVersionSnapshotToolDataStoreToolBoostSpec({
    this.dataStores,
    this.specs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoresValue = dataStores;
    if (dataStoresValue != null) {
      map['dataStores'] = dataStoresValue;
    }
    final specsValue = specs;
    if (specsValue != null) {
      map['specs'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolDataStoreToolBoostSpecSpec,
          Map<String, dynamic>>(specsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpec.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpec(
      dataStores: map['dataStores'] == null
          ? null
          : (map['dataStores'] as List).cast<String>(),
      specs: map['specs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpec>(
              map['specs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpec.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
