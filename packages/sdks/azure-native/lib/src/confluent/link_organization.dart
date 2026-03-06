// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Link an existing Confluent organization
class LinkOrganization {
  /// User auth token
  final pulumi.Input<String> token;

  /// Creates a new [LinkOrganization].
  /// [token] User auth token
  const LinkOrganization({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory LinkOrganization.fromMap(Map<String, dynamic> map) {
    return LinkOrganization(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

