// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume_response.dart';

/// Contains information about the volumes that can be mounted by Containers in the Container Groups.
class NGroupCGPropertyVolumeResponse {
  /// The Azure File volume.
  final pulumi.Input<AzureFileVolumeResponse>? azureFile;

  /// The name of the volume.
  final pulumi.Input<String> name;

  /// Creates a new [NGroupCGPropertyVolumeResponse].
  /// [azureFile] The Azure File volume.
  /// [name] The name of the volume.
  NGroupCGPropertyVolumeResponse({this.azureFile, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFileVolumeResponse,
            Map<String, dynamic>
          >(azureFile, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NGroupCGPropertyVolumeResponse.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyVolumeResponse(
      azureFile: (() {
        final guardedValue = map['azureFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFileVolumeResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
