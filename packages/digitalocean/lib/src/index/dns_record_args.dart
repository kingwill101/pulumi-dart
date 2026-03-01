// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_record_dns_record_args_doc}
/// The set of arguments for DnsRecord.
/// {@endtemplate}
/// {@macro pulumi_index_dns_record_dns_record_args_doc}
class DnsRecordArgs {
  /// The domain to add the record to.
  final pulumi.Input<String> domain;
  /// The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  final pulumi.Input<int>? flags;
  /// The hostname of the record. Use `@` for records on domain's name itself.
  final pulumi.Input<String>? name;
  /// The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  final pulumi.Input<int>? port;
  /// The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  final pulumi.Input<int>? priority;
  /// The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  final pulumi.Input<String>? tag;
  /// The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  final pulumi.Input<int>? ttl;
  /// The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  final pulumi.Input<String> type;
  /// The value of the record.
  final pulumi.Input<String> value;
  /// The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  final pulumi.Input<int>? weight;

  /// Creates a new [DnsRecordArgs].
  /// [domain] The domain to add the record to.
  /// [flags] The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  /// [name] The hostname of the record. Use `@` for records on domain's name itself.
  /// [port] The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  /// [priority] The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  /// [tag] The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  /// [ttl] The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  /// [type] The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  /// [value] The value of the record.
  /// [weight] The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  DnsRecordArgs({
    required String domain,
    int? flags,
    String? name,
    int? port,
    int? priority,
    String? tag,
    int? ttl,
    required String type,
    required String value,
    int? weight,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      flags = pulumi.Input.asOptionalInput<int>(flags),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asInput<String>(type),
      value = pulumi.Input.asInput<String>(value),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'flags': ?flags,
      'name': ?name,
      'port': ?port,
      'priority': ?priority,
      'tag': ?tag,
      'ttl': ?ttl,
      'type': type,
      'value': value,
      'weight': ?weight,
    };
  }

  factory DnsRecordArgs.fromMap(Map<String, dynamic> map) {
    return DnsRecordArgs(
      domain: map['domain'] as String,
      flags: map['flags'] == null ? null : map['flags'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] as String,
      value: map['value'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

