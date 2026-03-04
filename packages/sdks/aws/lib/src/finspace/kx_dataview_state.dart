// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_segment_configuration.dart';

/// Input properties used for looking up and filtering KxDataview resources.
class KxDataviewState {
  /// Amazon Resource Name (ARN) identifier of the KX dataview.
  final pulumi.Input<String>? arn;

  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  final pulumi.Input<bool>? autoUpdate;

  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final pulumi.Input<String>? availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  final pulumi.Input<String>? azMode;

  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  final pulumi.Input<String>? changesetId;

  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? createdTimestamp;

  /// The name of the database where you want to create a dataview.
  final pulumi.Input<String>? databaseName;

  /// A description for the dataview.
  final pulumi.Input<String>? description;

  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;

  /// The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? lastModifiedTimestamp;

  /// A unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// * You cannot create partial writable dataviews. When you create writeable dataviews you must provide the entire database path. You cannot perform updates on a writeable dataview. Hence, `auto_update` must be set as `false` if `read_write` is `true` for a dataview.
  /// * You must also use a unique volume for creating a writeable dataview. So, if you choose a volume that is already in use by another dataview, the dataview creation fails.
  /// * Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot update the `read_write` parameter later.
  final pulumi.Input<bool>? readWrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  final pulumi.Input<List<KxDataviewSegmentConfiguration>>?
  segmentConfigurations;
  final pulumi.Input<String>? status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxDataviewState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX dataview.
  /// [autoUpdate] The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  /// [availabilityZoneId] The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  /// [azMode] The number of availability zones you want to assign per cluster. This can be one of the following:
  /// [changesetId] A unique identifier of the changeset of the database that you want to use to ingest data.
  /// [createdTimestamp] Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [databaseName] The name of the database where you want to create a dataview.
  /// [description] A description for the dataview.
  /// [environmentId] Unique identifier for the KX environment.
  /// [lastModifiedTimestamp] The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [name] A unique identifier for the dataview.
  /// [readWrite] The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [segmentConfigurations] The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  /// [status] Optional.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxDataviewState({
    this.arn,
    this.autoUpdate,
    this.availabilityZoneId,
    this.azMode,
    this.changesetId,
    this.createdTimestamp,
    this.databaseName,
    this.description,
    this.environmentId,
    this.lastModifiedTimestamp,
    this.name,
    this.readWrite,
    this.region,
    this.segmentConfigurations,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoUpdate': ?autoUpdate,
      'availabilityZoneId': ?availabilityZoneId,
      'azMode': ?azMode,
      'changesetId': ?changesetId,
      'createdTimestamp': ?createdTimestamp,
      'databaseName': ?databaseName,
      'description': ?description,
      'environmentId': ?environmentId,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'readWrite': ?readWrite,
      'region': ?region,
      'segmentConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<KxDataviewSegmentConfiguration>,
            List<Map<String, dynamic>>
          >(
            segmentConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  KxDataviewSegmentConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxDataviewState.fromMap(Map<String, dynamic> map) {
    return KxDataviewState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoUpdate: (() {
        final guardedValue = map['autoUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azMode: (() {
        final guardedValue = map['azMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      changesetId: (() {
        final guardedValue = map['changesetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTimestamp: (() {
        final guardedValue = map['createdTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedTimestamp: (() {
        final guardedValue = map['lastModifiedTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readWrite: (() {
        final guardedValue = map['readWrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentConfigurations: (() {
        final guardedValue = map['segmentConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(
            guardedValue,
            (value) => KxDataviewSegmentConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
