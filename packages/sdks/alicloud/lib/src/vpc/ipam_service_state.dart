// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamService resources.
class IpamServiceState {
  /// Whether the IPAM service has been activated.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [IpamServiceState].
  /// [enabled] Whether the IPAM service has been activated.
  IpamServiceState({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory IpamServiceState.fromMap(Map<String, dynamic> map) {
    return IpamServiceState(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
