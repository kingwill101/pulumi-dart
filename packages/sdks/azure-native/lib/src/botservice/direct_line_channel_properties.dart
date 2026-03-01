// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_line_site.dart';

/// The parameters to provide for the Direct Line channel.
class DirectLineChannelProperties {
  /// Direct Line embed code of the resource
  final String? directLineEmbedCode;
  /// The extensionKey1
  final String? extensionKey1;
  /// The extensionKey2
  final String? extensionKey2;
  /// The list of Direct Line sites
  final List<DirectLineSite>? sites;

  /// Creates a new [DirectLineChannelProperties].
  /// [directLineEmbedCode] Direct Line embed code of the resource
  /// [extensionKey1] The extensionKey1
  /// [extensionKey2] The extensionKey2
  /// [sites] The list of Direct Line sites
  DirectLineChannelProperties({
    this.directLineEmbedCode,
    this.extensionKey1,
    this.extensionKey2,
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directLineEmbedCode': ?directLineEmbedCode,
      'extensionKey1': ?extensionKey1,
      'extensionKey2': ?extensionKey2,
      'sites': ?sites == null ? null : pulumi.Input.encodeList<DirectLineSite, Map<String, dynamic>>(sites!, (value) => value.toMap()),
    };
  }

  factory DirectLineChannelProperties.fromMap(Map<String, dynamic> map) {
    return DirectLineChannelProperties(
      directLineEmbedCode: map['directLineEmbedCode'] == null ? null : map['directLineEmbedCode'] as String,
      extensionKey1: map['extensionKey1'] == null ? null : map['extensionKey1'] as String,
      extensionKey2: map['extensionKey2'] == null ? null : map['extensionKey2'] as String,
      sites: map['sites'] == null ? null : pulumi.Input.decodeList<DirectLineSite>(map['sites'], (value) => DirectLineSite.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

