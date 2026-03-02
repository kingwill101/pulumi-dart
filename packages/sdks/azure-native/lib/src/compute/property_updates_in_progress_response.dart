// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the disk for which update is pending.
class PropertyUpdatesInProgressResponse {
  /// The target performance tier of the disk if a tier change operation is in progress.
  final pulumi.Input<String>? targetTier;

  /// Creates a new [PropertyUpdatesInProgressResponse].
  /// [targetTier] The target performance tier of the disk if a tier change operation is in progress.
  PropertyUpdatesInProgressResponse({
    this.targetTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetTier': ?targetTier,
    };
  }

  factory PropertyUpdatesInProgressResponse.fromMap(Map<String, dynamic> map) {
    return PropertyUpdatesInProgressResponse(
      targetTier: map['targetTier'] == null ? null : (map['targetTier']! as String).input(),
    );
  }
}

