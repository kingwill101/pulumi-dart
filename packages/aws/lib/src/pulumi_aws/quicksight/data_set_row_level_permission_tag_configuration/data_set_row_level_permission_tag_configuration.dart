// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_set_row_level_permission_tag_configuration_tag_rule/data_set_row_level_permission_tag_configuration_tag_rule.dart';

class DataSetRowLevelPermissionTagConfiguration {
  /// The status of row-level security tags. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  final String? status;

  /// A set of rules associated with row-level security, such as the tag names and columns that they are assigned to. See tag_rules.
  final List<DataSetRowLevelPermissionTagConfigurationTagRule> tagRules;

  DataSetRowLevelPermissionTagConfiguration({
    this.status,
    required this.tagRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['tagRules'] = Input.encodeList<
        DataSetRowLevelPermissionTagConfigurationTagRule,
        Map<String, dynamic>>(tagRules, (value) => value.toMap());
    return map;
  }

  factory DataSetRowLevelPermissionTagConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSetRowLevelPermissionTagConfiguration(
      status: map['status'] == null ? null : map['status'] as String,
      tagRules:
          Input.decodeList<DataSetRowLevelPermissionTagConfigurationTagRule>(
              map['tagRules'],
              (value) =>
                  DataSetRowLevelPermissionTagConfigurationTagRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
