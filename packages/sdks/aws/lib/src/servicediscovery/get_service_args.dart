// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicediscovery_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_servicediscovery_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Name of the service.
  final pulumi.Input<String> name;
  /// ID of the namespace that the service belongs to.
  final pulumi.Input<String> namespaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceArgs].
  /// [name] Name of the service.
  /// [namespaceId] ID of the namespace that the service belongs to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GetServiceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceId': namespaceId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

