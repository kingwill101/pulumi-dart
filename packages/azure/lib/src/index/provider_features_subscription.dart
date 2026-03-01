// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesSubscription {
  final bool? preventCancellationOnDestroy;

  /// Creates a new [ProviderFeaturesSubscription].
  /// [preventCancellationOnDestroy] Optional.
  ProviderFeaturesSubscription({
    this.preventCancellationOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preventCancellationOnDestroy': ?preventCancellationOnDestroy,
    };
  }

  factory ProviderFeaturesSubscription.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesSubscription(
      preventCancellationOnDestroy: map['preventCancellationOnDestroy'] == null ? null : map['preventCancellationOnDestroy'] as bool,
    );
  }
}

