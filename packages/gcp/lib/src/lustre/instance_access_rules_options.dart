// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options_access_rule.dart';

class InstanceAccessRulesOptions {
  /// An array of access rule exceptions. Each rule defines IP address ranges
  /// that should have different squash behavior than the default.
  /// Structure is documented below.
  final List<InstanceAccessRulesOptionsAccessRule>? accessRules;

  /// The GID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final int? defaultSquashGid;

  /// Set to "ROOT_SQUASH" to enable root squashing by default.
  /// Other values include "NO_SQUASH".
  /// Possible values are: `ROOT_SQUASH`, `NO_SQUASH`.
  final String defaultSquashMode;

  /// The UID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final int? defaultSquashUid;

  /// Creates a new [InstanceAccessRulesOptions].
  /// [accessRules] An array of access rule exceptions. Each rule defines IP address ranges
  /// [defaultSquashGid] The GID to map the root user to when root squashing is enabled
  /// [defaultSquashMode] Set to "ROOT_SQUASH" to enable root squashing by default.
  /// [defaultSquashUid] The UID to map the root user to when root squashing is enabled
  InstanceAccessRulesOptions({
    this.accessRules,
    this.defaultSquashGid,
    required this.defaultSquashMode,
    this.defaultSquashUid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessRulesValue = accessRules;
    if (accessRulesValue != null) {
      map['accessRules'] = pulumi.Input.encodeList<
          InstanceAccessRulesOptionsAccessRule,
          Map<String, dynamic>>(accessRulesValue, (value) => value.toMap());
    }
    final defaultSquashGidValue = defaultSquashGid;
    if (defaultSquashGidValue != null) {
      map['defaultSquashGid'] = defaultSquashGidValue;
    }
    map['defaultSquashMode'] = defaultSquashMode;
    final defaultSquashUidValue = defaultSquashUid;
    if (defaultSquashUidValue != null) {
      map['defaultSquashUid'] = defaultSquashUidValue;
    }
    return map;
  }

  factory InstanceAccessRulesOptions.fromMap(Map<String, dynamic> map) {
    return InstanceAccessRulesOptions(
      accessRules: map['accessRules'] == null
          ? null
          : pulumi.Input.decodeList<InstanceAccessRulesOptionsAccessRule>(
              map['accessRules'],
              (value) => InstanceAccessRulesOptionsAccessRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      defaultSquashGid: map['defaultSquashGid'] == null
          ? null
          : map['defaultSquashGid'] as int,
      defaultSquashMode: map['defaultSquashMode'] as String,
      defaultSquashUid: map['defaultSquashUid'] == null
          ? null
          : map['defaultSquashUid'] as int,
    );
  }
}
