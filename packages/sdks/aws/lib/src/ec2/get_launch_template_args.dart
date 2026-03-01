// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_filter.dart';

/// {@template pulumi_ec2_get_launch_template_get_launch_template_args_doc}
/// Arguments for getLaunchTemplate.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_launch_template_get_launch_template_args_doc}
class GetLaunchTemplateArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetLaunchTemplateFilter>>? filters;
  /// ID of the specific launch template to retrieve.
  final pulumi.Input<String>? id;
  /// Name of the launch template.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLaunchTemplateArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [id] ID of the specific launch template to retrieve.
  /// [name] Name of the launch template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  GetLaunchTemplateArgs({
    pulumi.Output<List<GetLaunchTemplateFilter>>? filters,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLaunchTemplateFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLaunchTemplateFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLaunchTemplateFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetLaunchTemplateFilter>>(pulumi.Input.decodeList<GetLaunchTemplateFilter>(map['filters'], (value) => GetLaunchTemplateFilter.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

