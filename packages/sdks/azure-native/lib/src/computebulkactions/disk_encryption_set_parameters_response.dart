// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameter of customer managed disk encryption set resource id that can be specified for disk. **Note:** The disk encryption set resource id can only be specified for managed disk. Please refer https://aka.ms/mdssewithcmkoverview for more details.
class DiskEncryptionSetParametersResponse {
  /// The ID of the sub-resource.
  final pulumi.Input<String>? id;

  /// Creates a new [DiskEncryptionSetParametersResponse].
  /// [id] The ID of the sub-resource.
  const DiskEncryptionSetParametersResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DiskEncryptionSetParametersResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetParametersResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
