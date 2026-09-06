// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Facebook page for Facebook channel registration
class FacebookPage {
  /// Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String?>? accessToken;
  /// Page id
  final pulumi.Input<String> id;

  /// Creates a new [FacebookPage].
  /// [accessToken] Facebook application access token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [id] Page id
  const FacebookPage({
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
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
