// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSnapshot.
class GetSnapshotArgs3 {
  /// Returns the list of snapshots created by the specific db_instance
  final Input<String>? dbInstanceIdentifier;

  /// Returns information on a specific snapshot_id.
  final Input<String>? dbSnapshotIdentifier;

  /// Set this value to true to include manual DB snapshots that are public and can be
  /// copied or restored by any AWS account, otherwise set this value to false. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? includePublic;

  /// Set this value to true to include shared manual DB snapshots from other
  /// AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.
  /// The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? includeShared;

  /// If more than one result is returned, use the most
  /// recent Snapshot.
  final Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of snapshots to be returned. If you don't specify a SnapshotType
  /// value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not
  /// included in the returned results by default. Possible values are, <span pulumi-lang-nodejs="`automated`" pulumi-lang-dotnet="`Automated`" pulumi-lang-go="`automated`" pulumi-lang-python="`automated`" pulumi-lang-yaml="`automated`" pulumi-lang-java="`automated`">`automated`</span>, <span pulumi-lang-nodejs="`manual`" pulumi-lang-dotnet="`Manual`" pulumi-lang-go="`manual`" pulumi-lang-python="`manual`" pulumi-lang-yaml="`manual`" pulumi-lang-java="`manual`">`manual`</span>, <span pulumi-lang-nodejs="`shared`" pulumi-lang-dotnet="`Shared`" pulumi-lang-go="`shared`" pulumi-lang-python="`shared`" pulumi-lang-yaml="`shared`" pulumi-lang-java="`shared`">`shared`</span>, <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span> and <span pulumi-lang-nodejs="`awsbackup`" pulumi-lang-dotnet="`Awsbackup`" pulumi-lang-go="`awsbackup`" pulumi-lang-python="`awsbackup`" pulumi-lang-yaml="`awsbackup`" pulumi-lang-java="`awsbackup`">`awsbackup`</span>.
  final Input<String>? snapshotType;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired DB snapshot.
  ///
  /// > **NOTE:** One of either <span pulumi-lang-nodejs="`dbInstanceIdentifier`" pulumi-lang-dotnet="`DbInstanceIdentifier`" pulumi-lang-go="`dbInstanceIdentifier`" pulumi-lang-python="`db_instance_identifier`" pulumi-lang-yaml="`dbInstanceIdentifier`" pulumi-lang-java="`dbInstanceIdentifier`">`db_instance_identifier`</span> or <span pulumi-lang-nodejs="`dbSnapshotIdentifier`" pulumi-lang-dotnet="`DbSnapshotIdentifier`" pulumi-lang-go="`dbSnapshotIdentifier`" pulumi-lang-python="`db_snapshot_identifier`" pulumi-lang-yaml="`dbSnapshotIdentifier`" pulumi-lang-java="`dbSnapshotIdentifier`">`db_snapshot_identifier`</span> is required.
  final Input<Map<String, String>>? tags;

  GetSnapshotArgs3({
    this.dbInstanceIdentifier,
    this.dbSnapshotIdentifier,
    this.includePublic,
    this.includeShared,
    this.mostRecent,
    this.region,
    this.snapshotType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbInstanceIdentifierValue = dbInstanceIdentifier;
    if (dbInstanceIdentifierValue != null) {
      map['dbInstanceIdentifier'] = dbInstanceIdentifierValue;
    }
    final dbSnapshotIdentifierValue = dbSnapshotIdentifier;
    if (dbSnapshotIdentifierValue != null) {
      map['dbSnapshotIdentifier'] = dbSnapshotIdentifierValue;
    }
    final includePublicValue = includePublic;
    if (includePublicValue != null) {
      map['includePublic'] = includePublicValue;
    }
    final includeSharedValue = includeShared;
    if (includeSharedValue != null) {
      map['includeShared'] = includeSharedValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = snapshotTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSnapshotArgs3.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs3(
      dbInstanceIdentifier:
          Input.asOptionalInput<String>(map['dbInstanceIdentifier']),
      dbSnapshotIdentifier:
          Input.asOptionalInput<String>(map['dbSnapshotIdentifier']),
      includePublic: Input.asOptionalInput<bool>(map['includePublic']),
      includeShared: Input.asOptionalInput<bool>(map['includeShared']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotType: Input.asOptionalInput<String>(map['snapshotType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
