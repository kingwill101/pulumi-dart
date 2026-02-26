// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../kx_dataview_segment_configuration/kx_dataview_segment_configuration.dart';

/// The set of arguments for KxDataview.
class KxDataviewArgs {
  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  final Input<bool> autoUpdate;

  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final Input<String>? availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  final Input<String> azMode;

  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  final Input<String>? changesetId;

  /// The name of the database where you want to create a dataview.
  final Input<String> databaseName;

  /// A description for the dataview.
  final Input<String>? description;

  /// Unique identifier for the KX environment.
  final Input<String> environmentId;

  /// A unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// * You cannot create partial writable dataviews. When you create writeable dataviews you must provide the entire database path. You cannot perform updates on a writeable dataview. Hence, <span pulumi-lang-nodejs="`autoUpdate`" pulumi-lang-dotnet="`AutoUpdate`" pulumi-lang-go="`autoUpdate`" pulumi-lang-python="`auto_update`" pulumi-lang-yaml="`autoUpdate`" pulumi-lang-java="`autoUpdate`">`auto_update`</span> must be set as <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if <span pulumi-lang-nodejs="`readWrite`" pulumi-lang-dotnet="`ReadWrite`" pulumi-lang-go="`readWrite`" pulumi-lang-python="`read_write`" pulumi-lang-yaml="`readWrite`" pulumi-lang-java="`readWrite`">`read_write`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for a dataview.
  /// * You must also use a unique volume for creating a writeable dataview. So, if you choose a volume that is already in use by another dataview, the dataview creation fails.
  /// * Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot update the <span pulumi-lang-nodejs="`readWrite`" pulumi-lang-dotnet="`ReadWrite`" pulumi-lang-go="`readWrite`" pulumi-lang-python="`read_write`" pulumi-lang-yaml="`readWrite`" pulumi-lang-java="`readWrite`">`read_write`</span> parameter later.
  final Input<bool>? readWrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See<span pulumi-lang-nodejs=" segmentConfigurations " pulumi-lang-dotnet=" SegmentConfigurations " pulumi-lang-go=" segmentConfigurations " pulumi-lang-python=" segment_configurations " pulumi-lang-yaml=" segmentConfigurations " pulumi-lang-java=" segmentConfigurations "> segment_configurations </span>below.
  final Input<List<KxDataviewSegmentConfiguration>>? segmentConfigurations;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  KxDataviewArgs({
    required this.autoUpdate,
    this.availabilityZoneId,
    required this.azMode,
    this.changesetId,
    required this.databaseName,
    this.description,
    required this.environmentId,
    this.name,
    this.readWrite,
    this.region,
    this.segmentConfigurations,
    this.tags,
  });

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
      map['segmentConfigurations'] = Input.mapOptionalInputValue<
              List<KxDataviewSegmentConfiguration>, List<Map<String, dynamic>>>(
          segmentConfigurationsValue,
          (value) => Input.encodeList<KxDataviewSegmentConfiguration,
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
      autoUpdate: Input.asInput<bool>(map['autoUpdate']),
      availabilityZoneId:
          Input.asOptionalInput<String>(map['availabilityZoneId']),
      azMode: Input.asInput<String>(map['azMode']),
      changesetId: Input.asOptionalInput<String>(map['changesetId']),
      databaseName: Input.asInput<String>(map['databaseName']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      name: Input.asOptionalInput<String>(map['name']),
      readWrite: Input.asOptionalInput<bool>(map['readWrite']),
      region: Input.asOptionalInput<String>(map['region']),
      segmentConfigurations:
          Input.asOptionalInput<List<KxDataviewSegmentConfiguration>>(
              map['segmentConfigurations']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
