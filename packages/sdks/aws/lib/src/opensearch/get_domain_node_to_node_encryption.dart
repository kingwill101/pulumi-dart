// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainNodeToNodeEncryption {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetDomainNodeToNodeEncryption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  GetDomainNodeToNodeEncryption({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetDomainNodeToNodeEncryption.fromMap(Map<String, dynamic> map) {
    return GetDomainNodeToNodeEncryption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
