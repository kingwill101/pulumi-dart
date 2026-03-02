// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_smb_mount_options.dart';

/// {@template pulumi_datasync_location_smb_location_smb_args_doc}
/// The set of arguments for LocationSmb.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_smb_location_smb_args_doc}
class LocationSmbArgs {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  final pulumi.Input<List<String>> agentArns;
  /// The name of the Windows domain the SMB server belongs to.
  final pulumi.Input<String>? domain;
  /// Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  final pulumi.Input<LocationSmbMountOptions>? mountOptions;
  /// The password of the user who can mount the share and has file permissions in the SMB.
  final pulumi.Input<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  final pulumi.Input<String> serverHostname;
  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  final pulumi.Input<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user who can mount the share and has file and folder permissions in the SMB share.
  final pulumi.Input<String> user;

  /// Creates a new [LocationSmbArgs].
  /// [agentArns] A list of DataSync Agent ARNs with which this location will be associated.
  /// [domain] The name of the Windows domain the SMB server belongs to.
  /// [mountOptions] Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  /// [password] The password of the user who can mount the share and has file permissions in the SMB.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverHostname] Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [user] The user who can mount the share and has file and folder permissions in the SMB share.
  LocationSmbArgs({
    required this.agentArns,
    this.domain,
    this.mountOptions,
    required this.password,
    this.region,
    required this.serverHostname,
    required this.subdirectory,
    this.tags,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentArns': agentArns,
      'domain': ?domain,
      'mountOptions': ?pulumi.Input.mapOptionalInputValue<LocationSmbMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
      'password': password,
      'region': ?region,
      'serverHostname': serverHostname,
      'subdirectory': subdirectory,
      'tags': ?tags,
      'user': user,
    };
  }

  factory LocationSmbArgs.fromMap(Map<String, dynamic> map) {
    return LocationSmbArgs(
      agentArns: ((map['agentArns'] as List).cast<String>()).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      mountOptions: map['mountOptions'] == null ? null : (LocationSmbMountOptions.fromMap((map['mountOptions'] as Map).cast<String, dynamic>())).input(),
      password: (map['password'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serverHostname: (map['serverHostname'] as String).input(),
      subdirectory: (map['subdirectory'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      user: (map['user'] as String).input(),
    );
  }
}

