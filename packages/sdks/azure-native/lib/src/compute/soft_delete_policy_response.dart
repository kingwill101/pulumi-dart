// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the soft deletion policy of the gallery.
class SoftDeletePolicyResponse {
  /// Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  final pulumi.Input<bool?>? isSoftDeleteEnabled;

  /// Creates a new [SoftDeletePolicyResponse].
  /// [isSoftDeleteEnabled] Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  const SoftDeletePolicyResponse({
    this.isSoftDeleteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSoftDeleteEnabled': ?isSoftDeleteEnabled,
    };
  }

  factory SoftDeletePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicyResponse(
      isSoftDeleteEnabled: (() { final guardedValue = map['isSoftDeleteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
