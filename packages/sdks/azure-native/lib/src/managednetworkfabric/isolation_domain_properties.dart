// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Isolation Domain Properties.
class IsolationDomainProperties {
  /// Type of encapsulation.
  final pulumi.Input<dynamic>? encapsulation;
  /// List of Neighbor Group IDs.
  final pulumi.Input<List<String>?>? neighborGroupIds;

  /// Creates a new [IsolationDomainProperties].
  /// [encapsulation] Type of encapsulation.
  /// [neighborGroupIds] List of Neighbor Group IDs.
  const IsolationDomainProperties({
    this.encapsulation,
    this.neighborGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulation': ?encapsulation,
      'neighborGroupIds': ?neighborGroupIds,
    };
  }

  factory IsolationDomainProperties.fromMap(Map<String, dynamic> map) {
    return IsolationDomainProperties(
      encapsulation: (() { final guardedValue = map['encapsulation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      neighborGroupIds: (() { final guardedValue = map['neighborGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
