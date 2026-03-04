// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceKibanaConfiguration {
  /// The number of disks of the Elasticsearch Kibana node. The default value is 1.
  final pulumi.Input<int>? amount;

  /// Elasticsearch Kibana node disk size
  final pulumi.Input<int>? disk;

  /// Elasticsearch Kibana node disk specifications
  final pulumi.Input<String> spec;

  /// Creates a new [InstanceKibanaConfiguration].
  /// [amount] The number of disks of the Elasticsearch Kibana node. The default value is 1.
  /// [disk] Elasticsearch Kibana node disk size
  /// [spec] Elasticsearch Kibana node disk specifications
  InstanceKibanaConfiguration({this.amount, this.disk, required this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'amount': ?amount, 'disk': ?disk, 'spec': spec};
  }

  factory InstanceKibanaConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceKibanaConfiguration(
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
    );
  }
}
