// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicediscovery_get_dns_namespace_get_dns_namespace_args_doc}
/// Arguments for getDnsNamespace.
/// {@endtemplate}
/// {@macro pulumi_servicediscovery_get_dns_namespace_get_dns_namespace_args_doc}
class GetDnsNamespaceArgs {
  /// Name of the namespace.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of the namespace. Allowed values are `DNS_PUBLIC` or `DNS_PRIVATE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetDnsNamespaceArgs].
  /// [name] Name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  /// [type] Type of the namespace. Allowed values are `DNS_PUBLIC` or `DNS_PRIVATE`.
  GetDnsNamespaceArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
    required String type,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDnsNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsNamespaceArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
