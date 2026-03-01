// ignore_for_file: unused_element, unnecessary_cast


/// Account-level tool label definition.
class RaiToolLabelPropertiesResponseAccountScope {
  /// Dictionary of label key-value pairs for the account scope.
  final Map<String, String>? labelValues;

  /// Creates a new [RaiToolLabelPropertiesResponseAccountScope].
  /// [labelValues] Dictionary of label key-value pairs for the account scope.
  RaiToolLabelPropertiesResponseAccountScope({
    this.labelValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelValues': ?labelValues,
    };
  }

  factory RaiToolLabelPropertiesResponseAccountScope.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesResponseAccountScope(
      labelValues: map['labelValues'] == null ? null : (map['labelValues'] as Map).cast<String, String>(),
    );
  }
}

