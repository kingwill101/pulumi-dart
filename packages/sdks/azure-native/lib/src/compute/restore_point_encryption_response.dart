// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';

/// Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
class RestorePointEncryptionResponse {
  /// Describes the parameter of customer managed disk encryption set resource id that can be specified for disk. **Note:** The disk encryption set resource id can only be specified for managed disk. Please refer https://aka.ms/mdssewithcmkoverview for more details.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// The type of key used to encrypt the data of the disk restore point.
  final pulumi.Input<String>? type;

  /// Creates a new [RestorePointEncryptionResponse].
  /// [diskEncryptionSet] Describes the parameter of customer managed disk encryption set resource id that can be specified for disk. **Note:** The disk encryption set resource id can only be specified for managed disk. Please refer https://aka.ms/mdssewithcmkoverview for more details.
  /// [type] The type of key used to encrypt the data of the disk restore point.
  RestorePointEncryptionResponse({
    this.diskEncryptionSet,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParametersResponse, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RestorePointEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointEncryptionResponse(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : (DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

