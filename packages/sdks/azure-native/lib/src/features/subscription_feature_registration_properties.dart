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
  const SubscriptionFeatureRegistrationProperties({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      shouldFeatureDisplayInPortal: (() { final guardedValue = map['shouldFeatureDisplayInPortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
