// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_site_response.dart';

/// The parameters to provide for the Web Chat channel.
class WebChatChannelPropertiesResponse {
  /// The list of Web Chat sites
  final List<WebChatSiteResponse>? sites;
  /// Web chat control embed code
  final String webChatEmbedCode;

  /// Creates a new [WebChatChannelPropertiesResponse].
  /// [sites] The list of Web Chat sites
  /// [webChatEmbedCode] Web chat control embed code
  WebChatChannelPropertiesResponse({
    this.sites,
    required this.webChatEmbedCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sites': ?sites == null ? null : pulumi.Input.encodeList<WebChatSiteResponse, Map<String, dynamic>>(sites!, (value) => value.toMap()),
      'webChatEmbedCode': webChatEmbedCode,
    };
  }

  factory WebChatChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WebChatChannelPropertiesResponse(
      sites: map['sites'] == null ? null : pulumi.Input.decodeList<WebChatSiteResponse>(map['sites'], (value) => WebChatSiteResponse.fromMap((value as Map).cast<String, dynamic>())),
      webChatEmbedCode: map['webChatEmbedCode'] as String,
    );
  }
}

