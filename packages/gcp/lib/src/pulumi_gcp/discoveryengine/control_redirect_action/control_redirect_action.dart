// ignore_for_file: unused_element, unnecessary_cast

class ControlRedirectAction {
  /// The URI to redirect to.
  final String redirectUri;

  ControlRedirectAction({
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectUri'] = redirectUri;
    return map;
  }

  factory ControlRedirectAction.fromMap(Map<String, dynamic> map) {
    return ControlRedirectAction(
      redirectUri: map['redirectUri'] as String,
    );
  }
}
