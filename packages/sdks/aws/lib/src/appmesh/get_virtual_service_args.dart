// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_virtual_service_get_virtual_service_args_doc}
/// Arguments for getVirtualService.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_virtual_service_get_virtual_service_args_doc}
class GetVirtualServiceArgs {
  /// Name of the service mesh in which the virtual service exists.
  final pulumi.Input<String> meshName;
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;
  /// Name of the virtual service.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVirtualServiceArgs].
  /// [meshName] Name of the service mesh in which the virtual service exists.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the virtual service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetVirtualServiceArgs({
    required pulumi.Output<String> meshName,
    pulumi.Output<String>? meshOwner,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      meshName = pulumi.Input.asInput<String>(meshName),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVirtualServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceArgs(
      meshName: pulumi.Output.create<String>(map['meshName'] as String),
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

