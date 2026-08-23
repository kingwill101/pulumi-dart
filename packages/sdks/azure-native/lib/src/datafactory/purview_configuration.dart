// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purview configuration.
class PurviewConfiguration {
  /// Purview resource id.
  final pulumi.Input<String>? purviewResourceId;

  /// Creates a new [PurviewConfiguration].
  /// [purviewResourceId] Purview resource id.
  const PurviewConfiguration({
    this.purviewResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purviewResourceId': ?purviewResourceId,
    };
  }

  factory PurviewConfiguration.fromMap(Map<String, dynamic> map) {
    return PurviewConfiguration(
      purviewResourceId: (() { final guardedValue = map['purviewResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
