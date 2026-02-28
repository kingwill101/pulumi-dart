// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_row_level_permission_tag_configuration_tag_rule.dart';

class GetDataSetRowLevelPermissionTagConfiguration {
  final String status;
  final List<GetDataSetRowLevelPermissionTagConfigurationTagRule> tagRules;

  /// Creates a new [GetDataSetRowLevelPermissionTagConfiguration].
  /// [status] Required.
  /// [tagRules] Required.
  GetDataSetRowLevelPermissionTagConfiguration({
    required this.status,
    required this.tagRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['tagRules'] = pulumi.Input.encodeList<
        GetDataSetRowLevelPermissionTagConfigurationTagRule,
        Map<String, dynamic>>(tagRules, (value) => value.toMap());
    return map;
  }

  factory GetDataSetRowLevelPermissionTagConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetRowLevelPermissionTagConfiguration(
      status: map['status'] as String,
      tagRules: pulumi.Input.decodeList<
              GetDataSetRowLevelPermissionTagConfigurationTagRule>(
          map['tagRules'],
          (value) =>
              GetDataSetRowLevelPermissionTagConfigurationTagRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
