// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_common_setting_custom_host_host.dart';

class SyntheticTaskCommonSettingCustomHost {
  /// The host list. See `hosts` below.
  final pulumi.Input<List<SyntheticTaskCommonSettingCustomHostHost>> hosts;
  /// Selection method:
  /// - 0: Random
  /// - 1: Polling.
  final pulumi.Input<int> selectType;

  /// Creates a new [SyntheticTaskCommonSettingCustomHost].
  /// [hosts] The host list. See `hosts` below.
  /// [selectType] Selection method:
  SyntheticTaskCommonSettingCustomHost({
    required this.hosts,
    required this.selectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': pulumi.Input.mapInputValue<List<SyntheticTaskCommonSettingCustomHostHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<SyntheticTaskCommonSettingCustomHostHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectType': selectType,
    };
  }

  factory SyntheticTaskCommonSettingCustomHost.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSettingCustomHost(
      hosts: (pulumi.Input.decodeList<SyntheticTaskCommonSettingCustomHostHost>(map['hosts'], (value) => SyntheticTaskCommonSettingCustomHostHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selectType: (map['selectType'] as int).input(),
    );
  }
}

