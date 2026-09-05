// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Smsvoicev2Keyword resources.
class Smsvoicev2KeywordState {
  /// Keyword to configure. Must be upper-case; AWS stores keywords in upper-case. 1-30 characters and cannot start or end with a space. Changing this forces a new resource.
  final pulumi.Input<String?>? keyword;
  /// Action to perform when the keyword is received. Valid values: `AUTOMATIC_RESPONSE`, `OPT_OUT`, `OPT_IN`. Defaults to `AUTOMATIC_RESPONSE`. Must not be set for mandatory keywords, whose action is managed by AWS.
  final pulumi.Input<String?>? keywordAction;
  /// Message to send when the keyword is received.
  final pulumi.Input<String?>? keywordMessage;
  /// ARN of the origination identity (phone number or pool) to attach the keyword to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? originationIdentityArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [Smsvoicev2KeywordState].
  /// [keyword] Keyword to configure. Must be upper-case; AWS stores keywords in upper-case. 1-30 characters and cannot start or end with a space. Changing this forces a new resource.
  /// [keywordAction] Action to perform when the keyword is received. Valid values: `AUTOMATIC_RESPONSE`, `OPT_OUT`, `OPT_IN`. Defaults to `AUTOMATIC_RESPONSE`. Must not be set for mandatory keywords, whose action is managed by AWS.
  /// [keywordMessage] Message to send when the keyword is received.
  /// [originationIdentityArn] ARN of the origination identity (phone number or pool) to attach the keyword to. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const Smsvoicev2KeywordState({
    this.keyword,
    this.keywordAction,
    this.keywordMessage,
    this.originationIdentityArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': ?keyword,
      'keywordAction': ?keywordAction,
      'keywordMessage': ?keywordMessage,
      'originationIdentityArn': ?originationIdentityArn,
      'region': ?region,
    };
  }

  factory Smsvoicev2KeywordState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2KeywordState(
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keywordAction: (() { final guardedValue = map['keywordAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keywordMessage: (() { final guardedValue = map['keywordMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originationIdentityArn: (() { final guardedValue = map['originationIdentityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
