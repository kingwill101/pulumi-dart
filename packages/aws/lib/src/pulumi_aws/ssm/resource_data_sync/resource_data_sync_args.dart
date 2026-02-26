// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_data_sync_s3_destination/resource_data_sync_s3_destination.dart';

/// The set of arguments for ResourceDataSync.
class ResourceDataSyncArgs {
  /// Name for the configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon S3 configuration details for the sync.
  final Input<ResourceDataSyncS3Destination> s3Destination;

  ResourceDataSyncArgs({
    this.name,
    this.region,
    required this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3Destination'] = Input.mapInputValue<ResourceDataSyncS3Destination,
        Map<String, dynamic>>(s3Destination, (value) => value.toMap());
    return map;
  }

  factory ResourceDataSyncArgs.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      s3Destination:
          Input.asInput<ResourceDataSyncS3Destination>(map['s3Destination']),
    );
  }
}
