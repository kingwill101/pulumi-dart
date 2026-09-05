// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDataSyncS3DestinationDestinationDataSharing {
  /// Data sharing type.
  /// Only `Organization` is supported.
  final pulumi.Input<String?>? destinationDataSharingType;

  /// Creates a new [ResourceDataSyncS3DestinationDestinationDataSharing].
  /// [destinationDataSharingType] Data sharing type.
  const ResourceDataSyncS3DestinationDestinationDataSharing({
    this.destinationDataSharingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationDataSharingType': ?destinationDataSharingType,
    };
  }

  factory ResourceDataSyncS3DestinationDestinationDataSharing.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncS3DestinationDestinationDataSharing(
      destinationDataSharingType: (() { final guardedValue = map['destinationDataSharingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
