// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs {
  /// A description of what the snapshot is.
  final Input<String>? description;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  final Input<String>? outpostArn;

  /// Indicates whether to permanently restore an archived snapshot.
  final Input<bool>? permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final Input<String>? storageTier;

  /// A map of tags to assign to the snapshot. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final Input<int>? temporaryRestoreDays;

  /// The Volume ID of which to make a snapshot.
  final Input<String> volumeId;

  SnapshotArgs({
    this.description,
    this.outpostArn,
    this.permanentRestore,
    this.region,
    this.storageTier,
    this.tags,
    this.temporaryRestoreDays,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final permanentRestoreValue = permanentRestore;
    if (permanentRestoreValue != null) {
      map['permanentRestore'] = permanentRestoreValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageTierValue = storageTier;
    if (storageTierValue != null) {
      map['storageTier'] = storageTierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final temporaryRestoreDaysValue = temporaryRestoreDays;
    if (temporaryRestoreDaysValue != null) {
      map['temporaryRestoreDays'] = temporaryRestoreDaysValue;
    }
    map['volumeId'] = volumeId;
    return map;
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: Input.asOptionalInput<String>(map['description']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      permanentRestore: Input.asOptionalInput<bool>(map['permanentRestore']),
      region: Input.asOptionalInput<String>(map['region']),
      storageTier: Input.asOptionalInput<String>(map['storageTier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      temporaryRestoreDays:
          Input.asOptionalInput<int>(map['temporaryRestoreDays']),
      volumeId: Input.asInput<String>(map['volumeId']),
    );
  }
}
