// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionFeatureRegistrationProperties {
  /// The feature description.
  final pulumi.Input<String>? description;
  /// Key-value pairs for meta data.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Indicates whether feature should be displayed in Portal.
  final pulumi.Input<bool>? shouldFeatureDisplayInPortal;
  /// The state.
  final pulumi.Input<String>? state;

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      shouldFeatureDisplayInPortal: map['shouldFeatureDisplayInPortal'] == null ? null : (map['shouldFeatureDisplayInPortal']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

