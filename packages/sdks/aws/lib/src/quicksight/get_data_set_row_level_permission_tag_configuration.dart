// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_row_level_permission_tag_configuration_tag_rule.dart';

class GetDataSetRowLevelPermissionTagConfiguration {
  final pulumi.Input<String> status;
  final pulumi.Input<List<GetDataSetRowLevelPermissionTagConfigurationTagRule>>
  tagRules;

  /// Creates a new [GetDataSetRowLevelPermissionTagConfiguration].
  /// [status] Required.
  /// [tagRules] Required.
  GetDataSetRowLevelPermissionTagConfiguration({
    required this.status,
    required this.tagRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'tagRules':
          pulumi.Input.mapInputValue<
            List<GetDataSetRowLevelPermissionTagConfigurationTagRule>,
            List<Map<String, dynamic>>
          >(
            tagRules,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataSetRowLevelPermissionTagConfigurationTagRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetDataSetRowLevelPermissionTagConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetRowLevelPermissionTagConfiguration(
      status: pulumi.Input.fromValue(map['status'] as String),
      tagRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDataSetRowLevelPermissionTagConfigurationTagRule
        >(
          map['tagRules']!,
          (value) =>
              GetDataSetRowLevelPermissionTagConfigurationTagRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
