// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_segment_configuration.dart';

/// {@template pulumi_finspace_kx_dataview_kx_dataview_args_doc}
/// The set of arguments for KxDataview.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_dataview_kx_dataview_args_doc}
class KxDataviewArgs {
  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  final pulumi.Input<bool> autoUpdate;

  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final pulumi.Input<String>? availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  final pulumi.Input<String> azMode;

  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  final pulumi.Input<String>? changesetId;

  /// The name of the database where you want to create a dataview.
  final pulumi.Input<String> databaseName;

  /// A description for the dataview.
  final pulumi.Input<String>? description;

  /// Unique identifier for the KX environment.
  final pulumi.Input<String> environmentId;

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

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KxDataviewArgs].
  /// [autoUpdate] The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  /// [availabilityZoneId] The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  /// [azMode] The number of availability zones you want to assign per cluster. This can be one of the following:
  /// [changesetId] A unique identifier of the changeset of the database that you want to use to ingest data.
  /// [databaseName] The name of the database where you want to create a dataview.
  /// [description] A description for the dataview.
  /// [environmentId] Unique identifier for the KX environment.
  /// [name] A unique identifier for the dataview.
  /// [readWrite] The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [segmentConfigurations] The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  KxDataviewArgs({
    required bool autoUpdate,
    String? availabilityZoneId,
    required String azMode,
    String? changesetId,
    required String databaseName,
    String? description,
    required String environmentId,
    String? name,
    bool? readWrite,
    String? region,
    List<KxDataviewSegmentConfiguration>? segmentConfigurations,
    Map<String, String>? tags,
  })  : autoUpdate = pulumi.Input.asInput<bool>(autoUpdate),
        availabilityZoneId =
            pulumi.Input.asOptionalInput<String>(availabilityZoneId),
        azMode = pulumi.Input.asInput<String>(azMode),
        changesetId = pulumi.Input.asOptionalInput<String>(changesetId),
        databaseName = pulumi.Input.asInput<String>(databaseName),
        description = pulumi.Input.asOptionalInput<String>(description),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        name = pulumi.Input.asOptionalInput<String>(name),
        readWrite = pulumi.Input.asOptionalInput<bool>(readWrite),
        region = pulumi.Input.asOptionalInput<String>(region),
        segmentConfigurations =
            pulumi.Input.asOptionalInput<List<KxDataviewSegmentConfiguration>>(
                segmentConfigurations),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoUpdate'] = autoUpdate;
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    map['azMode'] = azMode;
    final changesetIdValue = changesetId;
    if (changesetIdValue != null) {
      map['changesetId'] = changesetIdValue;
    }
    map['databaseName'] = databaseName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final readWriteValue = readWrite;
    if (readWriteValue != null) {
      map['readWrite'] = readWriteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final segmentConfigurationsValue = segmentConfigurations;
    if (segmentConfigurationsValue != null) {
      map['segmentConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<KxDataviewSegmentConfiguration>, List<Map<String, dynamic>>>(
          segmentConfigurationsValue,
          (value) => pulumi.Input.encodeList<KxDataviewSegmentConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory KxDataviewArgs.fromMap(Map<String, dynamic> map) {
    return KxDataviewArgs(
      autoUpdate: map['autoUpdate'] as bool,
      availabilityZoneId: map['availabilityZoneId'] == null
          ? null
          : map['availabilityZoneId'] as String,
      azMode: map['azMode'] as String,
      changesetId:
          map['changesetId'] == null ? null : map['changesetId'] as String,
      databaseName: map['databaseName'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      environmentId: map['environmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      readWrite: map['readWrite'] == null ? null : map['readWrite'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      segmentConfigurations: map['segmentConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(
              map['segmentConfigurations'],
              (value) => KxDataviewSegmentConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
