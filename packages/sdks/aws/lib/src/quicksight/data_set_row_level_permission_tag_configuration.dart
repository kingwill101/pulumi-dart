// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_row_level_permission_tag_configuration_tag_rule.dart';

class DataSetRowLevelPermissionTagConfiguration {
  /// The status of row-level security tags. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  final pulumi.Input<String>? status;
  /// A set of rules associated with row-level security, such as the tag names and columns that they are assigned to. See tag_rules.
  final pulumi.Input<List<DataSetRowLevelPermissionTagConfigurationTagRule>> tagRules;

  /// Creates a new [DataSetRowLevelPermissionTagConfiguration].
  /// [status] The status of row-level security tags. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  /// [tagRules] A set of rules associated with row-level security, such as the tag names and columns that they are assigned to. See tag_rules.
  const DataSetRowLevelPermissionTagConfiguration({
    this.status,
    required this.tagRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'tagRules': pulumi.Input.mapInputValue<List<DataSetRowLevelPermissionTagConfigurationTagRule>, List<Map<String, dynamic>>>(tagRules, (value) => pulumi.Input.encodeList<DataSetRowLevelPermissionTagConfigurationTagRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataSetRowLevelPermissionTagConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSetRowLevelPermissionTagConfiguration(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagRules: pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetRowLevelPermissionTagConfigurationTagRule>(map['tagRules']!, (value) => DataSetRowLevelPermissionTagConfigurationTagRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
