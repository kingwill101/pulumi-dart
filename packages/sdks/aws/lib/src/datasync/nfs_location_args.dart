// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_location_mount_options.dart';
import 'nfs_location_on_prem_config.dart';

/// {@template pulumi_datasync_nfs_location_nfs_location_args_doc}
/// The set of arguments for NfsLocation.
/// {@endtemplate}
/// {@macro pulumi_datasync_nfs_location_nfs_location_args_doc}
class NfsLocationArgs {
  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  final pulumi.Input<NfsLocationMountOptions>? mountOptions;
  /// Configuration block containing information for connecting to the NFS File System.
  final pulumi.Input<NfsLocationOnPremConfig> onPremConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  final pulumi.Input<String> serverHostname;
  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  final pulumi.Input<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NfsLocationArgs].
  /// [mountOptions] Configuration block containing mount options used by DataSync to access the NFS Server.
  /// [onPremConfig] Configuration block containing information for connecting to the NFS File System.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverHostname] Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  NfsLocationArgs({
    this.mountOptions,
    required this.onPremConfig,
    this.region,
    required this.serverHostname,
    required this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?pulumi.Input.mapOptionalInputValue<NfsLocationMountOptions, Map<String, dynamic>>(mountOptions, (value) => value.toMap()),
      'onPremConfig': pulumi.Input.mapInputValue<NfsLocationOnPremConfig, Map<String, dynamic>>(onPremConfig, (value) => value.toMap()),
      'region': ?region,
      'serverHostname': serverHostname,
      'subdirectory': subdirectory,
      'tags': ?tags,
    };
  }

  factory NfsLocationArgs.fromMap(Map<String, dynamic> map) {
    return NfsLocationArgs(
      mountOptions: map['mountOptions'] == null ? null : ((NfsLocationMountOptions.fromMap((map['mountOptions']! as Map).cast<String, dynamic>())).input()).input(),
      onPremConfig: (NfsLocationOnPremConfig.fromMap((map['onPremConfig']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serverHostname: (map['serverHostname'] as String).input(),
      subdirectory: (map['subdirectory'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

