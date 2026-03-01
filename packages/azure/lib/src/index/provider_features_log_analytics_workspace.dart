// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesLogAnalyticsWorkspace {
  final bool? permanentlyDeleteOnDestroy;

  /// Creates a new [ProviderFeaturesLogAnalyticsWorkspace].
  /// [permanentlyDeleteOnDestroy] Optional.
  ProviderFeaturesLogAnalyticsWorkspace({
    this.permanentlyDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permanentlyDeleteOnDestroy': ?permanentlyDeleteOnDestroy,
    };
  }

  factory ProviderFeaturesLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesLogAnalyticsWorkspace(
      permanentlyDeleteOnDestroy: map['permanentlyDeleteOnDestroy'] == null ? null : map['permanentlyDeleteOnDestroy'] as bool,
    );
  }
}

