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
    required List<String> agentArns,
    String? domain,
    LocationSmbMountOptions? mountOptions,
    required String password,
    String? region,
    required String serverHostname,
    required String subdirectory,
    Map<String, String>? tags,
    required String user,
  }) :
      agentArns = pulumi.Input.asInput<List<String>>(agentArns),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      mountOptions = pulumi.Input.asOptionalInput<LocationSmbMountOptions>(mountOptions),
      password = pulumi.Input.asInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverHostname = pulumi.Input.asInput<String>(serverHostname),
      subdirectory = pulumi.Input.asInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      user = pulumi.Input.asInput<String>(user);

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
      agentArns: (map['agentArns'] as List).cast<String>(),
      domain: map['domain'] == null ? null : map['domain'] as String,
      mountOptions: map['mountOptions'] == null ? null : LocationSmbMountOptions.fromMap((map['mountOptions'] as Map).cast<String, dynamic>()),
      password: map['password'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverHostname: map['serverHostname'] as String,
      subdirectory: map['subdirectory'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      user: map['user'] as String,
    );
  }
}

