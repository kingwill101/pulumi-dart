// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Legal agreement for a top level domain.
class TldLegalAgreementResponse {
  /// Unique identifier for the agreement.
  final pulumi.Input<String> agreementKey;
  /// Agreement details.
  final pulumi.Input<String> content;
  /// Agreement title.
  final pulumi.Input<String> title;
  /// URL where a copy of the agreement details is hosted.
  final pulumi.Input<String>? url;

  /// Creates a new [TldLegalAgreementResponse].
  /// [agreementKey] Unique identifier for the agreement.
  /// [content] Agreement details.
  /// [title] Agreement title.
  /// [url] URL where a copy of the agreement details is hosted.
  TldLegalAgreementResponse({
    required this.agreementKey,
    required this.content,
    required this.title,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementKey': agreementKey,
      'content': content,
      'title': title,
      'url': ?url,
    };
  }

  factory TldLegalAgreementResponse.fromMap(Map<String, dynamic> map) {
    return TldLegalAgreementResponse(
      agreementKey: (map['agreementKey'] as String).input(),
      content: (map['content'] as String).input(),
      title: (map['title'] as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

