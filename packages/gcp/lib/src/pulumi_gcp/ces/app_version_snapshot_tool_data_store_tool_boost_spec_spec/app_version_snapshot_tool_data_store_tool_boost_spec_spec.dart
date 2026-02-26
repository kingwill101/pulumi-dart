// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec/app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpecSpec {
  /// (Output)
  /// A list of boosting specifications.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec>?
      conditionBoostSpecs;

  AppVersionSnapshotToolDataStoreToolBoostSpecSpec({
    this.conditionBoostSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionBoostSpecsValue = conditionBoostSpecs;
    if (conditionBoostSpecsValue != null) {
      map['conditionBoostSpecs'] = Input.encodeList<
          AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec,
          Map<String,
              dynamic>>(conditionBoostSpecsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpec.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpec(
      conditionBoostSpecs: map['conditionBoostSpecs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec>(
              map['conditionBoostSpecs'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
