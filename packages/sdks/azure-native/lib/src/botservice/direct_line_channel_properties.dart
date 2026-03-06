// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_line_site.dart';

/// The parameters to provide for the Direct Line channel.
class DirectLineChannelProperties {
  /// Direct Line embed code of the resource
  final pulumi.Input<String>? directLineEmbedCode;
  /// The extensionKey1
  final pulumi.Input<String>? extensionKey1;
  /// The extensionKey2
  final pulumi.Input<String>? extensionKey2;
  /// The list of Direct Line sites
  final pulumi.Input<List<DirectLineSite>>? sites;

  /// Creates a new [DirectLineChannelProperties].
  /// [directLineEmbedCode] Direct Line embed code of the resource
  /// [extensionKey1] The extensionKey1
  /// [extensionKey2] The extensionKey2
  /// [sites] The list of Direct Line sites
  const DirectLineChannelProperties({
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
      'sites': ?pulumi.Input.mapOptionalInputValue<List<DirectLineSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<DirectLineSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DirectLineChannelProperties.fromMap(Map<String, dynamic> map) {
    return DirectLineChannelProperties(
      directLineEmbedCode: (() { final guardedValue = map['directLineEmbedCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionKey1: (() { final guardedValue = map['extensionKey1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionKey2: (() { final guardedValue = map['extensionKey2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DirectLineSite>(guardedValue, (value) => DirectLineSite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

