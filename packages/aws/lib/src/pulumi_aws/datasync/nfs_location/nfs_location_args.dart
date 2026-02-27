// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../nfs_location_mount_options/nfs_location_mount_options.dart';
import '../nfs_location_on_prem_config/nfs_location_on_prem_config.dart';

/// The set of arguments for NfsLocation.
class NfsLocationArgs {
  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  final Input<NfsLocationMountOptions>? mountOptions;

  /// Configuration block containing information for connecting to the NFS File System.
  final Input<NfsLocationOnPremConfig> onPremConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  final Input<String> serverHostname;

  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  final Input<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['mountOptions'] = Input.mapOptionalInputValue<NfsLocationMountOptions,
          Map<String, dynamic>>(mountOptionsValue, (value) => value.toMap());
    }
    map['onPremConfig'] =
        Input.mapInputValue<NfsLocationOnPremConfig, Map<String, dynamic>>(
            onPremConfig, (value) => value.toMap());
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
      mountOptions:
          Input.asOptionalInput<NfsLocationMountOptions>(map['mountOptions']),
      onPremConfig: Input.asInput<NfsLocationOnPremConfig>(map['onPremConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      serverHostname: Input.asInput<String>(map['serverHostname']),
      subdirectory: Input.asInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
