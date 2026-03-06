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
  const HybridMonitorSlsTaskSlsProcessConfigExpress({
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
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      express: (() { final guardedValue = map['express']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

