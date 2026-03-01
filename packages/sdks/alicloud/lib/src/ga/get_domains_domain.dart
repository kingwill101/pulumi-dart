// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomain {
  /// The ID of the global acceleration instance.
  final String acceleratorId;
  /// The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  final String domain;
  /// The ID of the Ga Domain.
  final String id;
  /// The status of the resource. Valid values: `illegal`, `inactive`, `active`, `unknown`.
  final String status;

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
      acceleratorId: map['acceleratorId'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

