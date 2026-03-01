// ignore_for_file: unused_element, unnecessary_cast


class ProfileRewriteRequest {
  /// Enable to add the X-Forwarded For (XFF) header, to specify the originating IP address of the client. Valid choices are: `enabled, disabled`
  final String? insertXfwdFor;
  /// Enable to add the X-Forwarded Host header, to specify the originating host of the client. Valid choices are: `enabled, disabled`
  final String? insertXfwdHost;
  /// Enable to add the X-Forwarded Proto header, to specify the originating protocol of the client. Valid choices are: `enabled, disabled`
  final String? insertXfwdProtocol;
  /// Enable to rewrite headers in Request settings. Valid choices are: `enabled, disabled`
  final String? rewriteHeaders;

  /// Creates a new [ProfileRewriteRequest].
  /// [insertXfwdFor] Enable to add the X-Forwarded For (XFF) header, to specify the originating IP address of the client. Valid choices are: `enabled, disabled`
  /// [insertXfwdHost] Enable to add the X-Forwarded Host header, to specify the originating host of the client. Valid choices are: `enabled, disabled`
  /// [insertXfwdProtocol] Enable to add the X-Forwarded Proto header, to specify the originating protocol of the client. Valid choices are: `enabled, disabled`
  /// [rewriteHeaders] Enable to rewrite headers in Request settings. Valid choices are: `enabled, disabled`
  ProfileRewriteRequest({
    this.insertXfwdFor,
    this.insertXfwdHost,
    this.insertXfwdProtocol,
    this.rewriteHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertXfwdFor': ?insertXfwdFor,
      'insertXfwdHost': ?insertXfwdHost,
      'insertXfwdProtocol': ?insertXfwdProtocol,
      'rewriteHeaders': ?rewriteHeaders,
    };
  }

  factory ProfileRewriteRequest.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteRequest(
      insertXfwdFor: map['insertXfwdFor'] == null ? null : map['insertXfwdFor'] as String,
      insertXfwdHost: map['insertXfwdHost'] == null ? null : map['insertXfwdHost'] as String,
      insertXfwdProtocol: map['insertXfwdProtocol'] == null ? null : map['insertXfwdProtocol'] as String,
      rewriteHeaders: map['rewriteHeaders'] == null ? null : map['rewriteHeaders'] as String,
    );
  }
}

