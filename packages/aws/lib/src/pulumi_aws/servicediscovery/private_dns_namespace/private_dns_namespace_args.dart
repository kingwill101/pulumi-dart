// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PrivateDnsNamespace.
class PrivateDnsNamespaceArgs {
  /// The description that you specify for the namespace when you create it.
  final Input<String>? description;

  /// The name of the namespace.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of VPC that you want to associate the namespace with.
  final Input<String> vpc;

  PrivateDnsNamespaceArgs({
    this.description,
    this.name,
    this.region,
    this.tags,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpc'] = vpc;
    return map;
  }

  factory PrivateDnsNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNamespaceArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpc: Input.asInput<String>(map['vpc']),
    );
  }
}
