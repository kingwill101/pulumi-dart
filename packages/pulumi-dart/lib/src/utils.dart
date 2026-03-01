/// Lazily computes and memoizes a value.
class Lazy<T> {
  final T Function() _factory;
  bool _initialized = false;
  late T _value;

  Lazy(this._factory);

  /// Whether the lazy value has been initialized.
  bool get isInitialized => _initialized;

  /// Returns memoized value, initializing it on first access.
  T get value {
    if (!_initialized) {
      _value = _factory();
      _initialized = true;
    }
    return _value;
  }
}

/// Creates a lazy value.
Lazy<T> lazy<T>(T Function() factory) => Lazy<T>(factory);

/// Returns `true` when a string is null/empty/whitespace.
bool isBlank(String? value) => value == null || value.trim().isEmpty;
