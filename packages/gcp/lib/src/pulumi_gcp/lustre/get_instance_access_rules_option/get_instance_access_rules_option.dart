// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_access_rules_option_access_rule/get_instance_access_rules_option_access_rule.dart';

class GetInstanceAccessRulesOption {
  /// An array of access rule exceptions. Each rule defines IP address ranges
  /// that should have different squash behavior than the default.
  final List<GetInstanceAccessRulesOptionAccessRule> accessRules;

  /// The GID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final int defaultSquashGid;

  /// Set to "ROOT_SQUASH" to enable root squashing by default.
  /// Other values include "NO_SQUASH". Possible values: ["ROOT_SQUASH", "NO_SQUASH"]
  final String defaultSquashMode;

  /// The UID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final int defaultSquashUid;

  GetInstanceAccessRulesOption({
    required this.accessRules,
    required this.defaultSquashGid,
    required this.defaultSquashMode,
    required this.defaultSquashUid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessRules'] = Input.encodeList<
        GetInstanceAccessRulesOptionAccessRule,
        Map<String, dynamic>>(accessRules, (value) => value.toMap());
    map['defaultSquashGid'] = defaultSquashGid;
    map['defaultSquashMode'] = defaultSquashMode;
    map['defaultSquashUid'] = defaultSquashUid;
    return map;
  }

  factory GetInstanceAccessRulesOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceAccessRulesOption(
      accessRules: Input.decodeList<GetInstanceAccessRulesOptionAccessRule>(
          map['accessRules'],
          (value) => GetInstanceAccessRulesOptionAccessRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      defaultSquashGid: map['defaultSquashGid'] as int,
      defaultSquashMode: map['defaultSquashMode'] as String,
      defaultSquashUid: map['defaultSquashUid'] as int,
    );
  }
}
