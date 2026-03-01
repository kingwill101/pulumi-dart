// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_common_setting_custom_host_host.dart';

class SyntheticTaskCommonSettingCustomHost {
  /// The host list. See `hosts` below.
  final List<SyntheticTaskCommonSettingCustomHostHost> hosts;
  /// Selection method:
  /// - 0: Random
  /// - 1: Polling.
  final int selectType;

  /// Creates a new [SyntheticTaskCommonSettingCustomHost].
  /// [hosts] The host list. See `hosts` below.
  /// [selectType] Selection method:
  SyntheticTaskCommonSettingCustomHost({
    required this.hosts,
    required this.selectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': pulumi.Input.encodeList<SyntheticTaskCommonSettingCustomHostHost, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'selectType': selectType,
    };
  }

  factory SyntheticTaskCommonSettingCustomHost.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSettingCustomHost(
      hosts: pulumi.Input.decodeList<SyntheticTaskCommonSettingCustomHostHost>(map['hosts'], (value) => SyntheticTaskCommonSettingCustomHostHost.fromMap((value as Map).cast<String, dynamic>())),
      selectType: map['selectType'] as int,
    );
  }
}

