// ignore_for_file: unused_element, unnecessary_cast


class FeaturesLogAnalyticsWorkspace {
  final bool? permanentlyDeleteOnDestroy;

  /// Creates a new [FeaturesLogAnalyticsWorkspace].
  /// [permanentlyDeleteOnDestroy] Optional.
  FeaturesLogAnalyticsWorkspace({
    this.permanentlyDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permanentlyDeleteOnDestroy': ?permanentlyDeleteOnDestroy,
    };
  }

  factory FeaturesLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return FeaturesLogAnalyticsWorkspace(
      permanentlyDeleteOnDestroy: map['permanentlyDeleteOnDestroy'] == null ? null : map['permanentlyDeleteOnDestroy'] as bool,
    );
  }
}

