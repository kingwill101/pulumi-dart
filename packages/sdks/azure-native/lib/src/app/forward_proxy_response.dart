// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of a forward proxy used to make the requests.
class ForwardProxyResponse {
  /// The convention used to determine the url of the request made.
  final pulumi.Input<String>? convention;
  /// The name of the header containing the host of the request.
  final pulumi.Input<String>? customHostHeaderName;
  /// The name of the header containing the scheme of the request.
  final pulumi.Input<String>? customProtoHeaderName;

  /// Creates a new [ForwardProxyResponse].
  /// [convention] The convention used to determine the url of the request made.
  /// [customHostHeaderName] The name of the header containing the host of the request.
  /// [customProtoHeaderName] The name of the header containing the scheme of the request.
  ForwardProxyResponse({
    this.convention,
    this.customHostHeaderName,
    this.customProtoHeaderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?convention,
      'customHostHeaderName': ?customHostHeaderName,
      'customProtoHeaderName': ?customProtoHeaderName,
    };
  }

  factory ForwardProxyResponse.fromMap(Map<String, dynamic> map) {
    return ForwardProxyResponse(
      convention: map['convention'] == null ? null : (map['convention']! as String).input(),
      customHostHeaderName: map['customHostHeaderName'] == null ? null : (map['customHostHeaderName']! as String).input(),
      customProtoHeaderName: map['customProtoHeaderName'] == null ? null : (map['customProtoHeaderName']! as String).input(),
    );
  }
}

