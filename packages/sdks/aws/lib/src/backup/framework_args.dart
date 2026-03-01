// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control.dart';

/// {@template pulumi_backup_framework_framework_args_doc}
/// The set of arguments for Framework.
/// {@endtemplate}
/// {@macro pulumi_backup_framework_framework_args_doc}
class FrameworkArgs {
  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  final pulumi.Input<List<FrameworkControl>> controls;
  /// The description of the framework with a maximum of 1,024 characters
  final pulumi.Input<String>? description;
  /// The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrameworkArgs].
  /// [controls] One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  /// [description] The description of the framework with a maximum of 1,024 characters
  /// [name] The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FrameworkArgs({
    required pulumi.Output<List<FrameworkControl>> controls,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      controls = pulumi.Input.asInput<List<FrameworkControl>>(controls),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': pulumi.Input.mapInputValue<List<FrameworkControl>, List<Map<String, dynamic>>>(controls, (value) => pulumi.Input.encodeList<FrameworkControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      controls: pulumi.Output.create<List<FrameworkControl>>(pulumi.Input.decodeList<FrameworkControl>(map['controls'], (value) => FrameworkControl.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

