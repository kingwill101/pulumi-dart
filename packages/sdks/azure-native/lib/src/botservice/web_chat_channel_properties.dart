// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_site.dart';

/// The parameters to provide for the Web Chat channel.
class WebChatChannelProperties {
  /// The list of Web Chat sites
  final pulumi.Input<List<WebChatSite>>? sites;

  /// Creates a new [WebChatChannelProperties].
  /// [sites] The list of Web Chat sites
  const WebChatChannelProperties({
    this.sites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sites': ?pulumi.Input.mapOptionalInputValue<List<WebChatSite>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<WebChatSite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebChatChannelProperties.fromMap(Map<String, dynamic> map) {
    return WebChatChannelProperties(
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebChatSite>(guardedValue, (value) => WebChatSite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
