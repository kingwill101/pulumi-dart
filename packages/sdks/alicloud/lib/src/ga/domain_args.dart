// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_ga_domain_domain_args_doc}
class DomainArgs {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;
  /// The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  final pulumi.Input<String> domain;

  /// Creates a new [DomainArgs].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [domain] The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  DomainArgs({
    required pulumi.Output<String> acceleratorId,
    required pulumi.Output<String> domain,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      domain = pulumi.Input.asInput<String>(domain);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'domain': domain,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
    );
  }
}

