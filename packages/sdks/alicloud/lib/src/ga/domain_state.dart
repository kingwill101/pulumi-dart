// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String>? acceleratorId;
  /// The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  final pulumi.Input<String>? domain;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [DomainState].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [domain] The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  /// [status] The status of the resource
  DomainState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'domain': ?domain,
      'status': ?status,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

