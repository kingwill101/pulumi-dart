// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_smsvoicev2_keyword_smsvoicev2_keyword_args_doc}
/// The set of arguments for Smsvoicev2Keyword.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_keyword_smsvoicev2_keyword_args_doc}
class Smsvoicev2KeywordArgs {
  /// Keyword to configure. Must be upper-case; AWS stores keywords in upper-case. 1-30 characters and cannot start or end with a space. Changing this forces a new resource.
  final pulumi.Input<String> keyword;
  /// Action to perform when the keyword is received. Valid values: `AUTOMATIC_RESPONSE`, `OPT_OUT`, `OPT_IN`. Defaults to `AUTOMATIC_RESPONSE`. Must not be set for mandatory keywords, whose action is managed by AWS.
  final pulumi.Input<String?>? keywordAction;
  /// Message to send when the keyword is received.
  final pulumi.Input<String> keywordMessage;
  /// ARN of the origination identity (phone number or pool) to attach the keyword to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> originationIdentityArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [Smsvoicev2KeywordArgs].
  /// [keyword] Keyword to configure. Must be upper-case; AWS stores keywords in upper-case. 1-30 characters and cannot start or end with a space. Changing this forces a new resource.
  /// [keywordAction] Action to perform when the keyword is received. Valid values: `AUTOMATIC_RESPONSE`, `OPT_OUT`, `OPT_IN`. Defaults to `AUTOMATIC_RESPONSE`. Must not be set for mandatory keywords, whose action is managed by AWS.
  /// [keywordMessage] Message to send when the keyword is received.
  /// [originationIdentityArn] ARN of the origination identity (phone number or pool) to attach the keyword to. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const Smsvoicev2KeywordArgs({
    required this.keyword,
    this.keywordAction,
    required this.keywordMessage,
    required this.originationIdentityArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': keyword,
      'keywordAction': ?keywordAction,
      'keywordMessage': keywordMessage,
      'originationIdentityArn': originationIdentityArn,
      'region': ?region,
    };
  }

  factory Smsvoicev2KeywordArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2KeywordArgs(
      keyword: pulumi.Input.fromValue(map['keyword'] as String),
      keywordAction: (() { final guardedValue = map['keywordAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keywordMessage: pulumi.Input.fromValue(map['keywordMessage'] as String),
      originationIdentityArn: pulumi.Input.fromValue(map['originationIdentityArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
