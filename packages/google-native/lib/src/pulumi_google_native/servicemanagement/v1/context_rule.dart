// ignore_for_file: unused_element, unnecessary_cast

/// A context rule provides information about the context for an individual API element.
class ContextRule {
  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
  final List<String>? allowedRequestExtensions;

  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
  final List<String>? allowedResponseExtensions;

  /// A list of full type names of provided contexts.
  final List<String>? provided;

  /// A list of full type names of requested contexts.
  final List<String>? requested;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String? selector;

  ContextRule({
    this.allowedRequestExtensions,
    this.allowedResponseExtensions,
    this.provided,
    this.requested,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedRequestExtensionsValue = allowedRequestExtensions;
    if (allowedRequestExtensionsValue != null) {
      map['allowedRequestExtensions'] = allowedRequestExtensionsValue;
    }
    final allowedResponseExtensionsValue = allowedResponseExtensions;
    if (allowedResponseExtensionsValue != null) {
      map['allowedResponseExtensions'] = allowedResponseExtensionsValue;
    }
    final providedValue = provided;
    if (providedValue != null) {
      map['provided'] = providedValue;
    }
    final requestedValue = requested;
    if (requestedValue != null) {
      map['requested'] = requestedValue;
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory ContextRule.fromMap(Map<String, dynamic> map) {
    return ContextRule(
      allowedRequestExtensions: map['allowedRequestExtensions'] == null
          ? null
          : (map['allowedRequestExtensions'] as List).cast<String>(),
      allowedResponseExtensions: map['allowedResponseExtensions'] == null
          ? null
          : (map['allowedResponseExtensions'] as List).cast<String>(),
      provided: map['provided'] == null
          ? null
          : (map['provided'] as List).cast<String>(),
      requested: map['requested'] == null
          ? null
          : (map['requested'] as List).cast<String>(),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
