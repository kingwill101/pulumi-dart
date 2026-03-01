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
  WafDomainState({
    pulumi.Output<String>? clientIpTag,
    pulumi.Output<String>? domainName,
  }) :
      clientIpTag = pulumi.Input.asOptionalInput<String>(clientIpTag),
      domainName = pulumi.Input.asOptionalInput<String>(domainName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpTag': ?clientIpTag,
      'domainName': ?domainName,
    };
  }

  factory WafDomainState.fromMap(Map<String, dynamic> map) {
    return WafDomainState(
      clientIpTag: map['clientIpTag'] == null ? null : pulumi.Output.create<String>(map['clientIpTag'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
    );
  }
}

