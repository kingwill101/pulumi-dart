// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackStreamingExperienceSettings {
  /// The preferred protocol that you want to use while streaming your application.
  /// Valid values are `TCP` and `UDP`.
  final pulumi.Input<String>? preferredProtocol;

  /// Creates a new [StackStreamingExperienceSettings].
  /// [preferredProtocol] The preferred protocol that you want to use while streaming your application.
  StackStreamingExperienceSettings({this.preferredProtocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'preferredProtocol': ?preferredProtocol};
  }

  factory StackStreamingExperienceSettings.fromMap(Map<String, dynamic> map) {
    return StackStreamingExperienceSettings(
      preferredProtocol: (() {
        final guardedValue = map['preferredProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
