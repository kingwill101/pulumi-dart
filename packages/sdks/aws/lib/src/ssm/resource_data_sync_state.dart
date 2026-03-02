// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_data_sync_s3_destination.dart';

/// Input properties used for looking up and filtering ResourceDataSync resources.
class ResourceDataSyncState {
  /// Name for the configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon S3 configuration details for the sync.
  final pulumi.Input<ResourceDataSyncS3Destination>? s3Destination;

  /// Creates a new [ResourceDataSyncState].
  /// [name] Name for the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Destination] Amazon S3 configuration details for the sync.
  ResourceDataSyncState({
    this.name,
    this.region,
    this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      's3Destination': ?pulumi.Input.mapOptionalInputValue<ResourceDataSyncS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
    };
  }

  factory ResourceDataSyncState.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncState(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3Destination: map['s3Destination'] == null ? null : ((ResourceDataSyncS3Destination.fromMap((map['s3Destination']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

