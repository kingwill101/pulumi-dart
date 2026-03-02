// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_smb_mount_options.dart';

/// Input properties used for looking up and filtering LocationSmb resources.
class LocationSmbState {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>>? agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// The name of the Windows domain the SMB server belongs to.
  final pulumi.Input<String>? domain;
  /// Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  final pulumi.Input<LocationSmbMountOptions>? mountOptions;
  /// The password of the user who can mount the share and has file permissions in the SMB.
  final pulumi.Input<String>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  final pulumi.Input<String>? serverHostname;
  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;
  /// The user who can mount the share and has file and folder permissions in the SMB share.
  final pulumi.Input<String>? user;

  /// Creates a new [LocationSmbState].
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [domain] The name of the Windows domain the SMB server belongs to.
  /// [mountOptions] Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  /// [password] The password of the user who can mount the share and has file permissions in the SMB.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverHostname] Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  /// [user] The user who can mount the share and has file and folder permissions in the SMB share.
  LocationSmbState({
    this.agentArns,
    this.arn,
    this.domain,
    this.mountOptions,
    this.password,
    this.region,
    this.serverHostname,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': ?agentArns,
      'arn': ?arn,
      'domain': ?domain,
      'mountOptions': ?pulumi.Input.mapOptionalInputValue<LocationSmbMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
      'password': ?password,
      'region': ?region,
      'serverHostname': ?serverHostname,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
      'user': ?user,
    };
  }

  factory LocationSmbState.fromMap(Map<String, dynamic> map) {
    return LocationSmbState(
      agentArns: map['agentArns'] == null ? null : (((map['agentArns'] as List).cast<String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      mountOptions: map['mountOptions'] == null ? null : ((LocationSmbMountOptions.fromMap((map['mountOptions']! as Map).cast<String, dynamic>())).input()).input(),
      password: map['password'] == null ? null : ((map['password'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serverHostname: map['serverHostname'] == null ? null : ((map['serverHostname'] as String).input()).input(),
      subdirectory: map['subdirectory'] == null ? null : ((map['subdirectory'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
      user: map['user'] == null ? null : ((map['user'] as String).input()).input(),
    );
  }
}

