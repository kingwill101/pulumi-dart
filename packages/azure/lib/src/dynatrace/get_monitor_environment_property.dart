// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_environment_property_environment_info.dart';

class GetMonitorEnvironmentProperty {
  final List<GetMonitorEnvironmentPropertyEnvironmentInfo> environmentInfos;

  /// Creates a new [GetMonitorEnvironmentProperty].
  /// [environmentInfos] Required.
  GetMonitorEnvironmentProperty({
    required this.environmentInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentInfos': pulumi.Input.encodeList<GetMonitorEnvironmentPropertyEnvironmentInfo, Map<String, dynamic>>(environmentInfos, (value) => value.toMap()),
    };
  }

  factory GetMonitorEnvironmentProperty.fromMap(Map<String, dynamic> map) {
    return GetMonitorEnvironmentProperty(
      environmentInfos: pulumi.Input.decodeList<GetMonitorEnvironmentPropertyEnvironmentInfo>(map['environmentInfos'], (value) => GetMonitorEnvironmentPropertyEnvironmentInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

