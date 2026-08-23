// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection information for HorizonDB parameter group.
class HorizonDbClusterParameterGroupConnectionPropertiesResponse {
  /// Indicates whether the parameters should be applied immediately.
  final pulumi.Input<bool>? applyImmediately;
  /// The resource ID of the connected parameter group.
  final pulumi.Input<String>? id;
  /// Indication of if parameter group is applied on HorizonDB resource.
  final pulumi.Input<String> syncStatus;

  /// Creates a new [HorizonDbClusterParameterGroupConnectionPropertiesResponse].
  /// [applyImmediately] Indicates whether the parameters should be applied immediately.
  /// [id] The resource ID of the connected parameter group.
  /// [syncStatus] Indication of if parameter group is applied on HorizonDB resource.
  const HorizonDbClusterParameterGroupConnectionPropertiesResponse({
    this.applyImmediately,
    this.id,
    required this.syncStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'id': ?id,
      'syncStatus': syncStatus,
    };
  }

  factory HorizonDbClusterParameterGroupConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HorizonDbClusterParameterGroupConnectionPropertiesResponse(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncStatus: pulumi.Input.fromValue(map['syncStatus'] as String),
    );
  }
}
