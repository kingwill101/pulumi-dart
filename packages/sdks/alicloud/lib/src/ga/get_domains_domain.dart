// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomain {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;

  /// The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  final pulumi.Input<String> domain;

  /// The ID of the Ga Domain.
  final pulumi.Input<String> id;

  /// The status of the resource. Valid values: `illegal`, `inactive`, `active`, `unknown`.
  final pulumi.Input<String> status;

  /// Creates a new [GetDomainsDomain].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [domain] The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  /// [id] The ID of the Ga Domain.
  /// [status] The status of the resource. Valid values: `illegal`, `inactive`, `active`, `unknown`.
  GetDomainsDomain({
    required this.acceleratorId,
    required this.domain,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'domain': domain,
      'id': id,
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
