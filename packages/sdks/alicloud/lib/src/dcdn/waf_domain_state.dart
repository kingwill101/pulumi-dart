// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WafDomain resources.
class WafDomainState {
  /// The client ip tag.
  final pulumi.Input<String>? clientIpTag;
  /// The accelerated domain name.
  final pulumi.Input<String>? domainName;

  /// Creates a new [WafDomainState].
  /// [clientIpTag] The client ip tag.
  /// [domainName] The accelerated domain name.
  const WafDomainState({
    this.clientIpTag,
    this.domainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpTag': ?clientIpTag,
      'domainName': ?domainName,
    };
  }

  factory WafDomainState.fromMap(Map<String, dynamic> map) {
    return WafDomainState(
      clientIpTag: (() { final guardedValue = map['clientIpTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

