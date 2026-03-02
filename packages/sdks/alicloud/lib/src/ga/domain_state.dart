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
    this.acceleratorId,
    this.domain,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'domain': ?domain,
      'status': ?status,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

