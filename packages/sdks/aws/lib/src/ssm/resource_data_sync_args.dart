// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_data_sync_s3_destination.dart';

/// {@template pulumi_ssm_resource_data_sync_resource_data_sync_args_doc}
/// The set of arguments for ResourceDataSync.
/// {@endtemplate}
/// {@macro pulumi_ssm_resource_data_sync_resource_data_sync_args_doc}
class ResourceDataSyncArgs {
  /// Name for the configuration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon S3 configuration details for the sync.
  final pulumi.Input<ResourceDataSyncS3Destination> s3Destination;

  /// Creates a new [ResourceDataSyncArgs].
  /// [name] Name for the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Destination] Amazon S3 configuration details for the sync.
  ResourceDataSyncArgs({this.name, this.region, required this.s3Destination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      's3Destination':
          pulumi.Input.mapInputValue<
            ResourceDataSyncS3Destination,
            Map<String, dynamic>
          >(s3Destination, (value) => value.toMap()),
    };
  }

  factory ResourceDataSyncArgs.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3Destination: pulumi.Input.fromValue(
        ResourceDataSyncS3Destination.fromMap(
          (map['s3Destination']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
