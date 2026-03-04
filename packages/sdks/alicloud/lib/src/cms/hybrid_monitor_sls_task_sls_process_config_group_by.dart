// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HybridMonitorSlsTaskSlsProcessConfigGroupBy {
  /// The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  final pulumi.Input<String>? alias;

  /// The name of the key that is used to filter logs imported from Log Service.
  final pulumi.Input<String>? slsKeyName;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigGroupBy].
  /// [alias] The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [slsKeyName] The name of the key that is used to filter logs imported from Log Service.
  HybridMonitorSlsTaskSlsProcessConfigGroupBy({this.alias, this.slsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alias': ?alias, 'slsKeyName': ?slsKeyName};
  }

  factory HybridMonitorSlsTaskSlsProcessConfigGroupBy.fromMap(
    Map<String, dynamic> map,
  ) {
    return HybridMonitorSlsTaskSlsProcessConfigGroupBy(
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slsKeyName: (() {
        final guardedValue = map['slsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
