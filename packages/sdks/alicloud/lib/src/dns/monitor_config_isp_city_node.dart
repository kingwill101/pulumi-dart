// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorConfigIspCityNode {
  /// The code of the city node to monitor.
  final pulumi.Input<String> cityCode;

  /// The code of the Internet provider service (ISP) node to monitor.
  final pulumi.Input<String> ispCode;

  /// Creates a new [MonitorConfigIspCityNode].
  /// [cityCode] The code of the city node to monitor.
  /// [ispCode] The code of the Internet provider service (ISP) node to monitor.
  MonitorConfigIspCityNode({required this.cityCode, required this.ispCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cityCode': cityCode, 'ispCode': ispCode};
  }

  factory MonitorConfigIspCityNode.fromMap(Map<String, dynamic> map) {
    return MonitorConfigIspCityNode(
      cityCode: pulumi.Input.fromValue(map['cityCode'] as String),
      ispCode: pulumi.Input.fromValue(map['ispCode'] as String),
    );
  }
}
