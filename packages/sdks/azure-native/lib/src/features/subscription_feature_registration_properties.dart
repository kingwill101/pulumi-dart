// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionFeatureRegistrationProperties {
  /// The feature description.
  final String? description;
  /// Key-value pairs for meta data.
  final Map<String, String>? metadata;
  /// Indicates whether feature should be displayed in Portal.
  final bool? shouldFeatureDisplayInPortal;
  /// The state.
  final String? state;

  /// Creates a new [SubscriptionFeatureRegistrationProperties].
  /// [description] The feature description.
  /// [metadata] Key-value pairs for meta data.
  /// [shouldFeatureDisplayInPortal] Indicates whether feature should be displayed in Portal.
  /// [state] The state.
  SubscriptionFeatureRegistrationProperties({
    this.description,
    this.metadata,
    this.shouldFeatureDisplayInPortal,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'metadata': ?metadata,
      'shouldFeatureDisplayInPortal': ?shouldFeatureDisplayInPortal,
      'state': ?state,
    };
  }

  factory SubscriptionFeatureRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return SubscriptionFeatureRegistrationProperties(
      description: map['description'] == null ? null : map['description'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      shouldFeatureDisplayInPortal: map['shouldFeatureDisplayInPortal'] == null ? null : map['shouldFeatureDisplayInPortal'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

