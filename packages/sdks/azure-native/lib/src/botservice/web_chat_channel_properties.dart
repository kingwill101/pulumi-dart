// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_site.dart';

/// The parameters to provide for the Web Chat channel.
class WebChatChannelProperties {
  /// The list of Web Chat sites
  final List<WebChatSite>? sites;

  /// Creates a new [WebChatChannelProperties].
  /// [sites] The list of Web Chat sites
  WebChatChannelProperties({
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sites': ?sites == null ? null : pulumi.Input.encodeList<WebChatSite, Map<String, dynamic>>(sites!, (value) => value.toMap()),
    };
  }

  factory WebChatChannelProperties.fromMap(Map<String, dynamic> map) {
    return WebChatChannelProperties(
      sites: map['sites'] == null ? null : pulumi.Input.decodeList<WebChatSite>(map['sites'], (value) => WebChatSite.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

