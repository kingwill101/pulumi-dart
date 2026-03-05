// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceUpgradeServiceDetailInfo {
  /// The Current2OpenSourceVersion of the instance.
  final pulumi.Input<String> current2OpenSourceVersion;

  /// Creates a new [GetInstancesInstanceUpgradeServiceDetailInfo].
  /// [current2OpenSourceVersion] The Current2OpenSourceVersion of the instance.
  GetInstancesInstanceUpgradeServiceDetailInfo({
    required this.current2OpenSourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current2OpenSourceVersion': current2OpenSourceVersion,
    };
  }

  factory GetInstancesInstanceUpgradeServiceDetailInfo.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceUpgradeServiceDetailInfo(
      current2OpenSourceVersion: pulumi.Input.fromValue(map['current2OpenSourceVersion'] as String),
    );
  }
}

