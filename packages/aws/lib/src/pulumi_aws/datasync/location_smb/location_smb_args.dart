// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../location_smb_mount_options/location_smb_mount_options.dart';

/// The set of arguments for LocationSmb.
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
    final map = <String, dynamic>{};
    map['agentArns'] = agentArns;
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final mountOptionsValue = mountOptions;
    if (mountOptionsValue != null) {
      map['mountOptions'] = pulumi.Input.mapOptionalInputValue<
          LocationSmbMountOptions,
          Map<String, dynamic>>(mountOptionsValue, (value) => value.toMap());
    }
    map['password'] = password;
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
    map['user'] = user;
    return map;
  }

  factory LocationSmbArgs.fromMap(Map<String, dynamic> map) {
    return LocationSmbArgs(
      agentArns: pulumi.Input.asInput<List<String>>(map['agentArns']),
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      mountOptions: pulumi.Input.asOptionalInput<LocationSmbMountOptions>(
          map['mountOptions']),
      password: pulumi.Input.asInput<String>(map['password']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverHostname: pulumi.Input.asInput<String>(map['serverHostname']),
      subdirectory: pulumi.Input.asInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
