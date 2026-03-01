// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesAsyncTeardown {
  /// Enables or disables the asynchronous teardown feature, which can reduce downtime during the shutdown of the virtual machine.
  final String? enabled;

  /// Creates a new [DomainFeaturesAsyncTeardown].
  /// [enabled] Enables or disables the asynchronous teardown feature, which can reduce downtime during the shutdown of the virtual machine.
  DomainFeaturesAsyncTeardown({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DomainFeaturesAsyncTeardown.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesAsyncTeardown(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
    );
  }
}

