// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The local administrator login properties.
class AdministratorPropertiesResponse {
  /// The administrator user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [AdministratorPropertiesResponse].
  /// [userName] The administrator user name.
  const AdministratorPropertiesResponse({
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': ?userName,
    };
  }

  factory AdministratorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AdministratorPropertiesResponse(
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

