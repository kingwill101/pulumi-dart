// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Property bag from billing account
class AccountResourceProperties {
  /// Customer owned application ID
  final pulumi.Input<String> appId;

  /// Creates a new [AccountResourceProperties].
  /// [appId] Customer owned application ID
  AccountResourceProperties({
    required this.appId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
    };
  }

  factory AccountResourceProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceProperties(
      appId: pulumi.Input.fromValue(map['appId'] as String),
    );
  }
}

