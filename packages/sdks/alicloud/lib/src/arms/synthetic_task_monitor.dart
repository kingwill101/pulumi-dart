// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitor {
  /// The city code of monitor.
  final pulumi.Input<String> cityCode;

  /// The type of monitor.
  final pulumi.Input<int> clientType;

  /// The operator code of monitor.
  final pulumi.Input<String> operatorCode;

  /// Creates a new [SyntheticTaskMonitor].
  /// [cityCode] The city code of monitor.
  /// [clientType] The type of monitor.
  /// [operatorCode] The operator code of monitor.
  SyntheticTaskMonitor({
    required this.cityCode,
    required this.clientType,
    required this.operatorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityCode': cityCode,
      'clientType': clientType,
      'operatorCode': operatorCode,
    };
  }

  factory SyntheticTaskMonitor.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitor(
      cityCode: pulumi.Input.fromValue(map['cityCode'] as String),
      clientType: pulumi.Input.fromValue(map['clientType'] as int),
      operatorCode: pulumi.Input.fromValue(map['operatorCode'] as String),
    );
  }
}
