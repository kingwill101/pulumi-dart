// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Isolation Domain Properties.
class IsolationDomainProperties {
  /// Type of encapsulation.
  final pulumi.Input<String>? encapsulation;
  /// List of Neighbor Group IDs.
  final pulumi.Input<List<String>>? neighborGroupIds;

  /// Creates a new [IsolationDomainProperties].
  /// [encapsulation] Type of encapsulation.
  /// [neighborGroupIds] List of Neighbor Group IDs.
  IsolationDomainProperties({
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
      encapsulation: map['encapsulation'] == null ? null : (map['encapsulation']! as String).input(),
      neighborGroupIds: map['neighborGroupIds'] == null ? null : ((map['neighborGroupIds']! as List).cast<String>()).input(),
    );
  }
}

