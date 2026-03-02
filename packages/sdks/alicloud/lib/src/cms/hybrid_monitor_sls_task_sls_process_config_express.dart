// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HybridMonitorSlsTaskSlsProcessConfigExpress {
  /// The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  final pulumi.Input<String>? alias;
  /// The extended field that specifies the result of basic operations that are performed on aggregation results.
  final pulumi.Input<String>? express;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigExpress].
  /// [alias] The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [express] The extended field that specifies the result of basic operations that are performed on aggregation results.
  HybridMonitorSlsTaskSlsProcessConfigExpress({
    this.alias,
    this.express,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'express': ?express,
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfigExpress.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfigExpress(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      express: map['express'] == null ? null : (map['express'] as String).input(),
    );
  }
}

