// ignore_for_file: unused_element, unnecessary_cast


/// Scale and concurrency settings for the HTTP trigger.
class FunctionsScaleAndConcurrencyResponseHttp {
  /// The maximum number of concurrent HTTP trigger invocations per instance.
  final int? perInstanceConcurrency;

  /// Creates a new [FunctionsScaleAndConcurrencyResponseHttp].
  /// [perInstanceConcurrency] The maximum number of concurrent HTTP trigger invocations per instance.
  FunctionsScaleAndConcurrencyResponseHttp({
    this.perInstanceConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perInstanceConcurrency': ?perInstanceConcurrency,
    };
  }

  factory FunctionsScaleAndConcurrencyResponseHttp.fromMap(Map<String, dynamic> map) {
    return FunctionsScaleAndConcurrencyResponseHttp(
      perInstanceConcurrency: map['perInstanceConcurrency'] == null ? null : map['perInstanceConcurrency'] as int,
    );
  }
}

