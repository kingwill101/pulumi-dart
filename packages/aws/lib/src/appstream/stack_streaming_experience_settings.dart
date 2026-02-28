// ignore_for_file: unused_element, unnecessary_cast

class StackStreamingExperienceSettings {
  /// The preferred protocol that you want to use while streaming your application.
  /// Valid values are `TCP` and `UDP`.
  final String? preferredProtocol;

  /// Creates a new [StackStreamingExperienceSettings].
  /// [preferredProtocol] The preferred protocol that you want to use while streaming your application.
  StackStreamingExperienceSettings({
    this.preferredProtocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredProtocolValue = preferredProtocol;
    if (preferredProtocolValue != null) {
      map['preferredProtocol'] = preferredProtocolValue;
    }
    return map;
  }

  factory StackStreamingExperienceSettings.fromMap(Map<String, dynamic> map) {
    return StackStreamingExperienceSettings(
      preferredProtocol: map['preferredProtocol'] == null
          ? null
          : map['preferredProtocol'] as String,
    );
  }
}
