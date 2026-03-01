// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_volume_response.dart';

/// Contains information about the volumes that can be mounted by Containers in the Container Groups.
class NGroupCGPropertyVolumeResponse {
  /// The Azure File volume.
  final AzureFileVolumeResponse? azureFile;
  /// The name of the volume.
  final String name;

  /// Creates a new [NGroupCGPropertyVolumeResponse].
  /// [azureFile] The Azure File volume.
  /// [name] The name of the volume.
  NGroupCGPropertyVolumeResponse({
    this.azureFile,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'name': name,
    };
  }

  factory NGroupCGPropertyVolumeResponse.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyVolumeResponse(
      azureFile: map['azureFile'] == null ? null : AzureFileVolumeResponse.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

