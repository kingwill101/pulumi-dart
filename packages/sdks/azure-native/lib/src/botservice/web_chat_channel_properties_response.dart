// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_site_response.dart';

/// The parameters to provide for the Web Chat channel.
class WebChatChannelPropertiesResponse {
  /// The list of Web Chat sites
  final pulumi.Input<List<WebChatSiteResponse>>? sites;
  /// Web chat control embed code
  final pulumi.Input<String> webChatEmbedCode;

  /// Creates a new [WebChatChannelPropertiesResponse].
  /// [sites] The list of Web Chat sites
  /// [webChatEmbedCode] Web chat control embed code
  WebChatChannelPropertiesResponse({
    this.sites,
    required this.webChatEmbedCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sites': ?pulumi.Input.mapOptionalInputValue<List<WebChatSiteResponse>, List<Map<String, dynamic>>>(sites, (value) => pulumi.Input.encodeList<WebChatSiteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webChatEmbedCode': webChatEmbedCode,
    };
  }

  factory WebChatChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WebChatChannelPropertiesResponse(
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebChatSiteResponse>(guardedValue, (value) => WebChatSiteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webChatEmbedCode: pulumi.Input.fromValue(map['webChatEmbedCode'] as String),
    );
  }
}

