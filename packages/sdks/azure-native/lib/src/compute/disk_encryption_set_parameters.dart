// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameter of customer managed disk encryption set resource id that can be specified for disk. **Note:** The disk encryption set resource id can only be specified for managed disk. Please refer https://aka.ms/mdssewithcmkoverview for more details.
class DiskEncryptionSetParameters {
  /// Resource Id
  final pulumi.Input<String>? id;

  /// Creates a new [DiskEncryptionSetParameters].
  /// [id] Resource Id
  DiskEncryptionSetParameters({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DiskEncryptionSetParameters.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetParameters(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

