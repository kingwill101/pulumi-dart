// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../nfs_location_mount_options/nfs_location_mount_options.dart';
import '../nfs_location_on_prem_config/nfs_location_on_prem_config.dart';

/// The set of arguments for NfsLocation.
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

  NfsLocationArgs({
    this.mountOptions,
    required this.onPremConfig,
    this.region,
    required this.serverHostname,
    required this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mountOptionsValue = mountOptions;
    if (mountOptionsValue != null) {
      map['mountOptions'] = pulumi.Input.mapOptionalInputValue<
          NfsLocationMountOptions,
          Map<String, dynamic>>(mountOptionsValue, (value) => value.toMap());
    }
    map['onPremConfig'] = pulumi.Input.mapInputValue<NfsLocationOnPremConfig,
        Map<String, dynamic>>(onPremConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverHostname'] = serverHostname;
    map['subdirectory'] = subdirectory;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NfsLocationArgs.fromMap(Map<String, dynamic> map) {
    return NfsLocationArgs(
      mountOptions: pulumi.Input.asOptionalInput<NfsLocationMountOptions>(
          map['mountOptions']),
      onPremConfig:
          pulumi.Input.asInput<NfsLocationOnPremConfig>(map['onPremConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverHostname: pulumi.Input.asInput<String>(map['serverHostname']),
      subdirectory: pulumi.Input.asInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
