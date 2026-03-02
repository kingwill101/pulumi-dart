// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LustreFileSystemRootSquashConfiguration {
  /// When root squash is enabled, you can optionally specify an array of NIDs of clients for which root squash does not apply. A client NID is a Lustre Network Identifier used to uniquely identify a client. You can specify the NID as either a single address or a range of addresses: 1. A single address is described in standard Lustre NID format by specifying the client’s IP address followed by the Lustre network ID (for example, 10.0.1.6@tcp). 2. An address range is described using a dash to separate the range (for example, 10.0.[2-10].[1-255]@tcp).
  final pulumi.Input<List<String>>? noSquashNids;
  /// You enable root squash by setting a user ID (UID) and group ID (GID) for the file system in the format UID:GID (for example, 365534:65534). The UID and GID values can range from 0 to 4294967294.
  final pulumi.Input<String>? rootSquash;

  /// Creates a new [LustreFileSystemRootSquashConfiguration].
  /// [noSquashNids] When root squash is enabled, you can optionally specify an array of NIDs of clients for which root squash does not apply. A client NID is a Lustre Network Identifier used to uniquely identify a client. You can specify the NID as either a single address or a range of addresses: 1. A single address is described in standard Lustre NID format by specifying the client’s IP address followed by the Lustre network ID (for example, 10.0.1.6@tcp). 2. An address range is described using a dash to separate the range (for example, 10.0.[2-10].[1-255]@tcp).
  /// [rootSquash] You enable root squash by setting a user ID (UID) and group ID (GID) for the file system in the format UID:GID (for example, 365534:65534). The UID and GID values can range from 0 to 4294967294.
  LustreFileSystemRootSquashConfiguration({
    this.noSquashNids,
    this.rootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSquashNids': ?noSquashNids,
      'rootSquash': ?rootSquash,
    };
  }

  factory LustreFileSystemRootSquashConfiguration.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemRootSquashConfiguration(
      noSquashNids: map['noSquashNids'] == null ? null : (((map['noSquashNids'] as List).cast<String>()).input()).input(),
      rootSquash: map['rootSquash'] == null ? null : ((map['rootSquash'] as String).input()).input(),
    );
  }
}

