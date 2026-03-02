// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Facebook page for Facebook channel registration
class FacebookPage {
  /// Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? accessToken;
  /// Page id
  final pulumi.Input<String> id;

  /// Creates a new [FacebookPage].
  /// [accessToken] Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [id] Page id
  FacebookPage({
    this.accessToken,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'id': id,
    };
  }

  factory FacebookPage.fromMap(Map<String, dynamic> map) {
    return FacebookPage(
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

