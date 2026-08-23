// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessSecurityConfigIamFederationOptions {
  /// Group attribute for this IAM federation integration. At least one of `groupAttribute` or `userAttribute` must be specified.
  final pulumi.Input<String>? groupAttribute;
  /// User attribute for this IAM federation integration. At least one of `groupAttribute` or `userAttribute` must be specified.
  final pulumi.Input<String>? userAttribute;

  /// Creates a new [ServerlessSecurityConfigIamFederationOptions].
  /// [groupAttribute] Group attribute for this IAM federation integration. At least one of `groupAttribute` or `userAttribute` must be specified.
  /// [userAttribute] User attribute for this IAM federation integration. At least one of `groupAttribute` or `userAttribute` must be specified.
  const ServerlessSecurityConfigIamFederationOptions({
    this.groupAttribute,
    this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': ?groupAttribute,
      'userAttribute': ?userAttribute,
    };
  }

  factory ServerlessSecurityConfigIamFederationOptions.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigIamFederationOptions(
      groupAttribute: (() { final guardedValue = map['groupAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAttribute: (() { final guardedValue = map['userAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
