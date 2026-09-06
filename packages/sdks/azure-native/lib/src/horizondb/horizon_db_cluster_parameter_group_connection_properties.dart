// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection information for HorizonDB parameter group.
class HorizonDbClusterParameterGroupConnectionProperties {
  /// Indicates whether the parameters should be applied immediately.
  final pulumi.Input<bool?>? applyImmediately;
  /// The resource ID of the connected parameter group.
  final pulumi.Input<String?>? id;

  /// Creates a new [HorizonDbClusterParameterGroupConnectionProperties].
  /// [applyImmediately] Indicates whether the parameters should be applied immediately.
  /// [id] The resource ID of the connected parameter group.
  const HorizonDbClusterParameterGroupConnectionProperties({
    this.applyImmediately,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'id': ?id,
    };
  }

  factory HorizonDbClusterParameterGroupConnectionProperties.fromMap(Map<String, dynamic> map) {
    return HorizonDbClusterParameterGroupConnectionProperties(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
