// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume.dart';

/// Contains information about the volumes that can be mounted by Containers in the Container Groups.
class NGroupCGPropertyVolume {
  /// The Azure File volume.
  final pulumi.Input<AzureFileVolume>? azureFile;
  /// The name of the volume.
  final pulumi.Input<String> name;

  /// Creates a new [NGroupCGPropertyVolume].
  /// [azureFile] The Azure File volume.
  /// [name] The name of the volume.
  NGroupCGPropertyVolume({
    this.azureFile,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileVolume, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NGroupCGPropertyVolume.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyVolume(
      azureFile: map['azureFile'] == null ? null : (AzureFileVolume.fromMap((map['azureFile']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

